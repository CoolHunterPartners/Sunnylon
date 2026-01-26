import 'package:gql/ast.dart';

/// Contract for GraphQL Service.
abstract class GraphQLService {
  /// Performs a GraphQL query.
  Future<Map<String, dynamic>> query(
    DocumentNode query, {
    Map<String, dynamic>? variables,
    bool fetchPolicyNetworkOnly = false,
  });

  /// Performs a GraphQL mutation.
  Future<Map<String, dynamic>> mutate(
    DocumentNode mutation, {
    Map<String, dynamic>? variables,
  });
}
