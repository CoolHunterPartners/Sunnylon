import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:sunnylon/core/common/helpers/app_failure.dart';

import '../../config/environment.dart';
import '../local_storage/token_store_contract.dart';
import 'graphql_service.dart';
import 'helpers/graphql_exception_handler.dart';

class GraphQLServiceImpl implements GraphQLService {
  late final GraphQLClient _client;
  final TokenStoreService _tokenStore;

  GraphQLServiceImpl(this._tokenStore) {
    _initClient();
  }

  void _initClient() {
    var url = Environment.baseUrl;
    if (!url.endsWith('/')) {
      url = '$url/';
    }

    final httpLink = HttpLink(url);

    final authLink = AuthLink(
      getToken: () async {
        final token = await _tokenStore.readAccessToken();
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
    DocumentNode query, {
    Map<String, dynamic>? variables,
    bool fetchPolicyNetworkOnly = false,
  }) async {
    final options = QueryOptions(
      document: query,
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
    DocumentNode mutation, {
    Map<String, dynamic>? variables,
  }) async {
    final options = MutationOptions(
      document: mutation,
      variables: variables ?? {},
    );

    try {
      final result = await _client.mutate(options);

      if (result.hasException) {
        throw GraphQLExceptionHandler.fromOperationException(result.exception!);
      }

      return result.data ?? {};
    } catch (e) {
      if (e is AppFailure) rethrow;
      throw AppFailure.common(message: 'Mutation error: $e');
    }
  }
}
