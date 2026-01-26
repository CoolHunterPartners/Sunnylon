import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/di/service_locator.dart';
import '../../router/shell/app_shell.dart';
import '../factories/page_factory.dart';
import 'app_router_refresh_notifier.dart';

class AppRoute {
  static const home = (name: 'home', path: '/');
  static const login = (name: 'login', path: '/login');
  static const forgotPassword = (
    name: 'forgot-password',
    path: '/forgot-password',
  );

  // Loans
  static const loans = (name: 'loans', path: '/loans');
  static const newLoanType = (name: 'new-loan-type', path: '/loans/new-type');
  static const newClientLoan = (
    name: 'new-client-loan',
    path: '/loans/new-client/:step',
  );
  static const existingClientLoan = (
    name: 'existing-client-loan',
    path: '/loans/existing-client',
  );

  // Settings
  static const settings = (name: 'settings', path: '/settings');
}

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
          GoRoute(
            path: AppRoute.existingClientLoan.path,
            name: AppRoute.existingClientLoan.name,
            builder: (context, state) =>
                PageFactory.createExistingClientLoanFormPage(),
          ),
          GoRoute(
            path: AppRoute.newClientLoan.path,
            name: AppRoute.newClientLoan.name,
            builder: (context, state) {
              final step = state.pathParameters['step'];
              // Pass form data via extra if needed, or use a shared Bloc/Provider
              // final formData = state.extra as Map<String, dynamic>? ?? {};

              switch (step) {
                case '1':
                  return PageFactory.createNewClientStep1Page();
                case '2':
                  return PageFactory.createNewClientStep2Page();
                case '3':
                  return PageFactory.createNewClientStep3Page();
                case '4':
                  return PageFactory.createNewClientStep4Page();
                case '5':
                  return PageFactory.createNewClientStep5Page();
                default:
                  return PageFactory.createNewClientStep1Page();
              }
            },
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
