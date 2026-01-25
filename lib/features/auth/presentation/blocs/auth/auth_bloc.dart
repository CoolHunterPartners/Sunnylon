import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sunnylon/features/auth/domain/entities/user.dart';
import 'package:sunnylon/features/auth/domain/repositories/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User>? _authStateSubscription;

  AuthBloc(this._authRepository) : super(const AuthInitial()) {
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<SignOut>(_onSignOut);
    on<AuthStateChanged>(_onAuthStateChanged);

    // Listen to auth state changes from repository
    _authStateSubscription = _authRepository.authStateChanges.listen((user) {
      add(AuthStateChanged(user));
    });
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<AuthState> emit,
  ) async {
    // Initial check just looks at the current user value in repo
    final user = _authRepository.currentUser;
    if (user != User.empty) {
      emit(AuthAuthenticated(user));
    } else {
      emit(const AuthUnauthenticated());
    }
  }

  Future<void> _onSignOut(SignOut event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());

    try {
      await _authRepository.logOut();
      emit(const AuthUnauthenticated());
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  void _onAuthStateChanged(AuthStateChanged event, Emitter<AuthState> emit) {
    if (event.user != User.empty) {
      emit(AuthAuthenticated(event.user));
    } else {
      emit(const AuthUnauthenticated());
    }
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }
}
