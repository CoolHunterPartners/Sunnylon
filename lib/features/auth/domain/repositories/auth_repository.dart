import 'dart:async';

import '../entities/user.dart';

abstract class AuthRepository {
  Stream<User> get authStateChanges;
  User get currentUser;
  Future<void> logOut();
}
