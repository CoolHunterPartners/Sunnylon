import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/di/service_locator.dart';
import '../factories/page_factory.dart';
import 'app_router_refresh_notifier.dart';
import 'app_routes.dart';
import 'app_shell.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    refreshListenable: sl<AppRouterRefreshNotifier>(),
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final notifier = sl<AppRouterRefreshNotifier>();
      final isLoggingIn = state.matchedLocation == AppRoute.login.path;
      final isRecoveringPassword =
          state.matchedLocation == AppRoute.forgotPassword.path;

      if (!notifier.isAuthenticated && !isLoggingIn && !isRecoveringPassword) {
        return AppRoute.login.path;
      }

      if (notifier.isAuthenticated && isLoggingIn) {
        return AppRoute.home.path;
      }

      return null;
    },
    initialLocation: AppRoute.home.path,
    routes: [
      GoRoute(
        path: AppRoute.login.path,
        name: AppRoute.login.name,
        builder: (context, state) => PageFactory.createLoginPage(),
      ),
      GoRoute(
        path: AppRoute.forgotPassword.path,
        name: AppRoute.forgotPassword.name,
        builder: (context, state) => PageFactory.createForgotPasswordPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppShell(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoute.home.path,
            name: AppRoute.home.name,
            builder: (context, state) => PageFactory.createHomePage(),
          ),
          //clients
          GoRoute(
            path: AppRoute.clients.path,
            name: AppRoute.clients.name,
            builder: (context, state) => PageFactory.createClientsPage(),
          ),

          GoRoute(
            path: AppRoute.loans.path,
            name: AppRoute.loans.name,
            builder: (context, state) => PageFactory.createLoansPage(),
          ),
          GoRoute(
            path: AppRoute.newLoanType.path,
            name: AppRoute.newLoanType.name,
            builder: (context, state) => PageFactory.createNewLoanTypePage(),
          ),
          // New Client Loan Steps
          GoRoute(
            path: AppRoute.newClientStep1.path,
            name: AppRoute.newClientStep1.name,
            builder: (context, state) => PageFactory.createNewClientStep1Page(),
          ),
          GoRoute(
            path: AppRoute.newClientStep2.path,
            name: AppRoute.newClientStep2.name,
            builder: (context, state) => PageFactory.createNewClientStep2Page(),
          ),
          GoRoute(
            path: AppRoute.newClientStep3.path,
            name: AppRoute.newClientStep3.name,
            builder: (context, state) => PageFactory.createNewClientStep3Page(),
          ),
          GoRoute(
            path: AppRoute.newClientStep4.path,
            name: AppRoute.newClientStep4.name,
            builder: (context, state) => PageFactory.createNewClientStep4Page(),
          ),
          GoRoute(
            path: AppRoute.newClientStep5.path,
            name: AppRoute.newClientStep5.name,
            builder: (context, state) => PageFactory.createNewClientStep5Page(),
          ),
          GoRoute(
            path: AppRoute.settings.path,
            name: AppRoute.settings.name,
            builder: (context, state) => PageFactory.createSettingsPage(),
          ),
        ],
      ),
    ],
  );
}
