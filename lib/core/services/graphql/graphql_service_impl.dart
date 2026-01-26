import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:sunnylon/core/common/helpers/app_failure.dart';

import '../../config/environment.dart';
import '../local_storage/token_store_contract.dart';
import 'graphql_service.dart';
import 'helpers/graphql_exception_handler.dart';

class GraphQLServiceImpl implements GraphQLService {
  late final GraphQLClient _client;
  final TokenStoreService _tokenStore;

  GraphQLServiceImpl(this._tokenStore) {
    var url = Environment.baseUrl;
    if (!url.endsWith('/')) {
      url = '$url/';
    }

    final httpLink = HttpLink(url, httpClient: http.Client());
    print('🚀 GraphQLService Initialized with:');
    print('   Base URL: $url');
    print('   Timeout: ${Environment.apiTimeout}ms');

    final authLink = AuthLink(
      getToken: () async {
        print('🔐 Getting Access Token...');
        final start = DateTime.now();
        final token = await _tokenStore.readAccessToken();
        print(
          '🔐 Access Token retrieved in ${DateTime.now().difference(start).inMilliseconds}ms',
        );
        return token != null ? 'Bearer $token' : null;
      },
    );

    final link = authLink.concat(httpLink);

    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
        mutate: Policies(fetch: FetchPolicy.networkOnly),
      ),
      queryRequestTimeout: const Duration(seconds: 30), // The Fix
    );
  }

  @override
  Future<Map<String, dynamic>> query(
    String queryString, {
    Map<String, dynamic>? variables,
    bool fetchPolicyNetworkOnly = false,
  }) async {
    final options = QueryOptions(
      document: gql(queryString),
      variables: variables ?? {},
      fetchPolicy: fetchPolicyNetworkOnly
          ? FetchPolicy.networkOnly
          : FetchPolicy.cacheFirst,
    );

    try {
      final result = await _client.query(options);

      if (result.hasException) {
        throw GraphQLExceptionHandler.fromOperationException(result.exception!);
      }

      return result.data ?? {};
    } catch (e) {
      if (e is AppFailure) rethrow;
      throw AppFailure.common(message: 'Query error: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> mutate(
    String mutationString, {
    Map<String, dynamic>? variables,
  }) async {
    final options = MutationOptions(
      document: gql(mutationString),
      variables: variables ?? {},
    );

    try {
      final result = await _client.mutate(options);

      if (result.hasException) {
        print(result.exception);
        throw GraphQLExceptionHandler.fromOperationException(result.exception!);
      }

      return result.data ?? {};
    } catch (e) {
      if (e is AppFailure) rethrow;
      throw AppFailure.common(message: 'Mutation error: $e');
    }
  }
}
