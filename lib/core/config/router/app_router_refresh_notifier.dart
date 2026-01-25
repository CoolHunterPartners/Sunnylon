import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../../../features/auth/domain/entities/user.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../../services/network/network_info.dart';

class AppRouterRefreshNotifier extends ChangeNotifier {
  final AuthRepository _authRepository;
  final NetworkInfo _networkInfo;

  StreamSubscription<User>? _authStateSubscription;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  User _currentUser = User.empty;
  bool _isOnline = true;

  User get currentUser => _currentUser;
  bool get isOnline => _isOnline;
  bool get isAuthenticated => _currentUser != User.empty;

  AppRouterRefreshNotifier(this._authRepository, this._networkInfo) {
    _initializeListeners();
  }

  void _initializeListeners() {
    _authStateSubscription = _authRepository.authStateChanges.listen((user) {
      // Only notify if user actually changed
      if (_currentUser != user) {
        _currentUser = user;
        notifyListeners();
      }
    });

    _connectivitySubscription = _networkInfo.onConnectivityChanged.listen((
      result,
    ) {
      final newOnlineStatus = _networkInfo.isOnline(result);
      // Only notify if connectivity status actually changed
      if (_isOnline != newOnlineStatus) {
        _isOnline = newOnlineStatus;
        notifyListeners();
      }
    });

    _initializeConnectivityState();
  }

  Future<void> _initializeConnectivityState() async {
    try {
      final result = await _networkInfo.isConnected;
      _isOnline = result;
      notifyListeners();
    } catch (e) {
      _isOnline = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _authStateSubscription?.cancel();
    _connectivitySubscription?.cancel();
    super.dispose();
  }
}
