import 'dart:async';

import '../../../../core/common/helpers/result.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Stream<User> get authStateChanges;

  User get currentUser;

  Future<Result<void>> login({required String email, required String password});

  Future<void> logOut();

  Future<Result<User>> getProfile();
}
