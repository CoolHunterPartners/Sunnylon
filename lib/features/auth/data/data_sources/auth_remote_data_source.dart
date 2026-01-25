import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/services/graphql/graphql_service.dart';

abstract class AuthRemoteDataSource {
  Future<Map<String, dynamic>> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GraphQLService _graphqlService;

  AuthRemoteDataSourceImpl(this._graphqlService);

  @override
  Future<Map<String, dynamic>> login(String email, String password) async {
    const mutation = r'''
     mutation Login($userName: String!, $password: String!) {
  login(login: { password: $password, userName: $userName }) {
    accessToken
    expirationDate
    refreshToken
  }
}
    ''';

    final result = await _graphqlService.mutate(
      mutation,
      variables: {'userName': email, 'password': password},
    );

    // Assuming the response structure based on common patterns.
    // Adjust path based on actual API response.
    if (result.containsKey('login')) {
      return result['login'] as Map<String, dynamic>;
    } else {
      throw const AppFailure.server(message: 'Invalid response format');
    }
  }
}
