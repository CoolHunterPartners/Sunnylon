import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/features/auth/presentation/login/login_screen.dart';
import 'package:sunnylon/features/auth/presentation/forgot_password/forgot_password_screen.dart';


final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      name: 'forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
  ],
);
