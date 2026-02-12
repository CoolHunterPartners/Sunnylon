import 'package:sunnylon/core/api/graphql/schema.graphql.dart';

import '../../../../core/api/graphql/mutations/client_mutations.graphql.dart';
import '../../../../core/api/graphql/queries/client_queries.graphql.dart';
import '../../../../core/api/graphql/queries/common_queries.graphql.dart';
import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/services/graphql/graphql_service.dart';

abstract class ClientsRemoteDataSource {
  Future<Query$GetClient$clients> getClients({int page = 0, int pageSize = 10});

  Future<String> createClient(Input$CreateClientViewModelInput input);

  Future<Query$Common> getCommonTypes();
}

class ClientsRemoteDataSourceImpl implements ClientsRemoteDataSource {
  final GraphQLService _graphqlService;

  ClientsRemoteDataSourceImpl(this._graphqlService);

  @override
  Future<Query$GetClient$clients> getClients({
    int page = 0,
    int pageSize = 50,
  }) async {
    final variables = Variables$Query$GetClient(
      page: page,
      pageSize: pageSize,
      sort: [Input$GetClientDtoSortInput(field: 'name', dir: 'ASC')],
    );

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

  @override
  Future<String> createClient(Input$CreateClientViewModelInput input) async {
    final variables = Variables$Mutation$CreateClient(model: input);

    final result = await _graphqlService.mutate(
      documentNodeMutationCreateClient,
      variables: variables.toJson(),
    );

    if (result.containsKey('registerClient')) {
      return result['registerClient'] as String;
    } else {
      // If void/boolean return isn't in map, check errors?
      // usually mutation helper throws if errors.
      throw const AppFailure.server(message: 'Failed to create client');
    }
  }

  @override
  Future<Query$Common> getCommonTypes() async {
    final result = await _graphqlService.query(documentNodeQueryCommon);

    try {
      return Query$Common.fromJson(result);
    } catch (e) {
      throw const AppFailure.server(message: 'Failed to parse common types');
    }
  }
}
