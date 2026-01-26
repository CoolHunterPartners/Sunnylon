import 'dart:async';

import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/common/helpers/result.dart';
import '../../../../core/services/local_storage/token_store_contract.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final TokenStoreService _tokenStore;
  final _controller = StreamController<User>.broadcast();
  User _currentUser = User.empty;

  AuthRepositoryImpl(this._remoteDataSource, this._tokenStore);

  @override
  Stream<User> get authStateChanges => _controller.stream;

  @override
  User get currentUser => _currentUser;

  @override
  Future<Result<User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final data = await _remoteDataSource.login(email, password);

      await _tokenStore.saveTokens(
        access: data.accessToken,
        refresh: data.refreshToken,
      );

      final user = User(id: 'mock_user_id', email: email, name: 'Mock User');

      _currentUser = user;
      _controller.add(user);

      return Result.success(user);
    } catch (e) {
      if (e is AppFailure) {
        return Result.failure(e);
      }
      return Result.failure(AppFailure.common(message: e.toString()));
    }
  }

  @override
  Future<void> logOut() async {
    await _tokenStore.clearTokens();
    _currentUser = User.empty;
    _controller.add(User.empty);
  }
}
