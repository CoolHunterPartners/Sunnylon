import 'dart:async';

import 'package:graphql/client.dart';
import 'package:sunnylon/core/api/graphql/queries/auth_queries.graphql.dart';
import 'package:sunnylon/core/config/environment.dart';
import 'package:sunnylon/core/services/local_storage/token_store_contract.dart';

class RefreshTokenLink extends Link {
  final TokenStoreService _tokenStore;
  bool _isRefreshing = false;

  RefreshTokenLink(this._tokenStore);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    await for (final response in forward!(request)) {
      if (_isAuthError(response)) {
        if (_isRefreshing) {
          // If already refreshing, wait a bit and retry (simple approach) or just yield error
          // For now, to avoid complexity, we just yield the error if we are already refreshing
          // A more robust solution would await the ongoing refresh.
          yield response;
          return;
        }

        _isRefreshing = true;

        try {
          final oldRefreshToken = await _tokenStore.readRefreshToken();
          if (oldRefreshToken == null) {
            yield response;
            return;
          }

          final newTokens = await _refreshTokens(oldRefreshToken);
          if (newTokens != null) {
            await _tokenStore.saveTokens(
              access: newTokens.accessToken!,
              refresh: newTokens.refreshToken,
            );

            // Retry original request
            yield* forward(request);
            return;
          } else {
            // Refresh failed (invalid token etc)
            await _tokenStore.clearTokens();
            yield response;
            return;
          }
        } catch (e) {
          yield response;
        } finally {
          _isRefreshing = false;
        }
      } else {
        yield response;
      }
    }
  }

  bool _isAuthError(Response response) {
    if (response.errors == null || response.errors!.isEmpty) return false;
    return response.errors!.any((e) {
      final message = e.message.toLowerCase();
      final code = e.extensions?['code'];
      return message.contains('unauthorized') ||
          message.contains('unauthenticated') ||
          code == 'UNAUTHENTICATED';
    });
  }

  Future<Query$RefreshToken$refreshToken?> _refreshTokens(
    String refreshToken,
  ) async {
    try {
      final url = Environment.baseUrl;

      final httpLink = HttpLink(url);
      final client = GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
        queryRequestTimeout: const Duration(seconds: 30),
      );

      final result = await client.query$RefreshToken(
        Options$Query$RefreshToken(
          variables: Variables$Query$RefreshToken(
            oldRefreshToken: refreshToken,
          ),
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );

      if (result.hasException || result.parsedData == null) return null;

      return result.parsedData!.refreshToken;
    } catch (e) {
      return null;
    }
  }
}
