import '../../../../core/api/graphql/mutations/auth_mutations.graphql.dart';
import '../../../../core/api/graphql/queries/auth_queries.graphql.dart';
import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/services/graphql/graphql_service.dart';

abstract class AuthRemoteDataSource {
  Future<Mutation$Login$login> login(String email, String password);
  Future<Query$Profile$profile> getProfile();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GraphQLService _graphqlService;

  AuthRemoteDataSourceImpl(this._graphqlService);

  @override
  Future<Mutation$Login$login> login(String email, String password) async {
    final variables = Variables$Mutation$Login(
      userName: email,
      password: password,
    );

    final result = await _graphqlService.mutate(
      documentNodeMutationLogin,
      variables: variables.toJson(),
    );

    if (result.containsKey('login')) {
      return Mutation$Login$login.fromJson(result['login']);
    } else {
      throw const AppFailure.server(message: 'Invalid response format');
    }
  }

  @override
  Future<Query$Profile$profile> getProfile() async {
    final result = await _graphqlService.query(documentNodeQueryProfile);

    if (result.containsKey('profile')) {
      return Query$Profile$profile.fromJson(result['profile']);
    } else {
      throw const AppFailure.server(message: 'Invalid response format');
    }
  }
}
