import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/shell/app_shell.dart';
import 'package:sunnylon/features/auth/presentation/forgot_password/forgot_password_screen.dart';
import 'package:sunnylon/features/auth/presentation/login/login_screen.dart';
import 'package:sunnylon/features/routes/presentation/clients_screen.dart';
import 'package:sunnylon/features/routes/presentation/loans_screen.dart';
import 'package:sunnylon/features/routes/presentation/settings_screen.dart';
import 'package:sunnylon/features/routes/presentation/today_route_screen.dart';

// Private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Routes that shouldn't have the bottom navigation bar
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

    // Routes that will have the bottom navigation bar
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const TodayRouteScreen(),
        ),
        GoRoute(
          path: '/clients',
          name: 'clients',
          builder: (context, state) => const ClientsScreen(),
        ),
        GoRoute(
          path: '/loans',
          name: 'loans',
          builder: (context, state) => const LoansScreen(),
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
