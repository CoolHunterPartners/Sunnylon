import '../../../../core/api/graphql/queries/client_queries.graphql.dart';
import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/services/graphql/graphql_service.dart';

abstract class ClientsRemoteDataSource {
  Future<Query$GetClient$clients> getClients({int page = 0, int pageSize = 10});
}

class ClientsRemoteDataSourceImpl implements ClientsRemoteDataSource {
  final GraphQLService _graphqlService;

  ClientsRemoteDataSourceImpl(this._graphqlService);

  @override
  Future<Query$GetClient$clients> getClients({
    int page = 0,
    int pageSize = 10,
  }) async {
    final variables = Variables$Query$GetClient(page: page, pageSize: pageSize);

    final result = await _graphqlService.query(
      documentNodeQueryGetClient,
      variables: variables.toJson(),
    );

    if (result.containsKey('clients') && result['clients'] != null) {
      return Query$GetClient$clients.fromJson(result['clients']);
    } else {
      throw const AppFailure.server(message: 'Invalid response format');
    }
  }
}
