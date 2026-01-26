import 'package:gql/language.dart';
import 'package:sunnylon/features/auth/data/models/login_response.dart';

import '../../../../core/api/graphql/mutations/auth_mutations.graphql.dart';
import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/services/graphql/graphql_service.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GraphQLService _graphqlService;

  AuthRemoteDataSourceImpl(this._graphqlService);

  @override
  Future<LoginResponse> login(String email, String password) async {
    final variables = Variables$Mutation$Login(
      userName: email,
      password: password,
    );

    final result = await _graphqlService.mutate(
      printNode(documentNodeMutationLogin),
      variables: variables.toJson(),
    );

    if (result.containsKey('login')) {
      return LoginResponse.fromJson(result['login']);
    } else {
      throw const AppFailure.server(message: 'Invalid response format');
    }
  }
}
