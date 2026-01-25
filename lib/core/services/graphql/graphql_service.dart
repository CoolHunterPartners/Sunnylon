/// Contract for GraphQL Service.
abstract class GraphQLService {
  /// Performs a GraphQL query.
  Future<Map<String, dynamic>> query(
    String queryString, {
    Map<String, dynamic>? variables,
    bool fetchPolicyNetworkOnly = false,
  });

  /// Performs a GraphQL mutation.
  Future<Map<String, dynamic>> mutate(
    String mutationString, {
    Map<String, dynamic>? variables,
  });
}
