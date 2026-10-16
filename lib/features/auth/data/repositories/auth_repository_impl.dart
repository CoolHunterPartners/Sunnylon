import 'dart:async';

import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/common/helpers/repository_handler_mixin.dart';
import '../../../../core/common/helpers/result.dart';
import '../../../../core/services/local_storage/token_store_contract.dart';
import '../../data/mappers/user_mapper.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl with RepositoryHandlerMixin implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final TokenStoreService _tokenStore;
  final _controller = StreamController<User>.broadcast();
  User _currentUser = User.empty;

  AuthRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._tokenStore,
  );

  @override
  Stream<User> get authStateChanges => _controller.stream;

  @override
  User get currentUser => _currentUser;

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) => guardResult(() async {
    final data = await _remoteDataSource.login(email, password);
    await _tokenStore.saveTokens(
      access: data.accessToken ?? '',
      refresh: data.refreshToken ?? '',
    );
  }, contextMessage: 'AuthRepositoryImpl.login');

  @override
  Future<void> logOut() => guardResult(() async {
    await Future.wait([
      _tokenStore.clearTokens(),
      _localDataSource.clearCurrentUser(),
    ]);
    _currentUser = User.empty;
    _controller.add(User.empty);
  }, contextMessage: 'AuthRepositoryImpl.logOut');

  @override
  Future<Result<User>> getProfile() => guardResult(() async {
    final remoteProfile = await _remoteDataSource.getProfile();

    // Map remote profile to drift companion using extension
    final profileCompanion = remoteProfile.toCompanion();

    // Save to local (DAO handles isCurrent = true logic)
    await _localDataSource.saveProfile(profileCompanion);

    // Retrieve the saved profile from local to ensure consistent data.
    final localProfile = await _localDataSource.getProfile();

    if (localProfile == null) {
      throw const AppFailure.database(
        message: 'Failed to save/retrieve user profile',
      );
    }

    final user = localProfile.toEntity();

    _currentUser = user;
    _controller.add(user);

    return user;
  }, contextMessage: 'AuthRepositoryImpl.getProfile');

  void dispose() => _controller.close();
}
