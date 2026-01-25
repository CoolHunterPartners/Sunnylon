import 'dart:async';

import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _controller = StreamController<User>.broadcast();
  User _currentUser = User.empty;

  @override
  Stream<User> get authStateChanges => _controller.stream;

  @override
  User get currentUser => _currentUser;

  @override
  Future<void> logOut() async {
    _currentUser = User.empty;
    _controller.add(User.empty);
  }

  // Helper for testing
  void setLoggedIn(User user) {
    _currentUser = user;
    _controller.add(user);
  }
}
