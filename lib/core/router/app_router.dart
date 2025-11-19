import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/core/shell/app_shell.dart';
import 'package:sunnylon/features/auth/presentation/forgot_password/forgot_password_screen.dart';
import 'package:sunnylon/features/auth/presentation/login/login_screen.dart';
import 'package:sunnylon/features/clients/presentation/clients_screen.dart';
import 'package:sunnylon/features/home/domain/collection_customer.dart';
import 'package:sunnylon/features/home/presentation/collection_detail_screen.dart';
import 'package:sunnylon/features/home/presentation/register_payment_screen.dart';
import 'package:sunnylon/features/home/presentation/today_route_screen.dart';
import 'package:sunnylon/features/loans/presentation/existing_client_loan_form_screen.dart';
import 'package:sunnylon/features/loans/presentation/loans_screen.dart';
import 'package:sunnylon/features/loans/presentation/new_client/new_client_step1_screen.dart';
import 'package:sunnylon/features/loans/presentation/new_loan_type_screen.dart';
import 'package:sunnylon/features/settings/presentation/settings_screen.dart';

// Private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/login',
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
    GoRoute(
      path: '/collections/detail',
      name: 'collection-detail',
      builder: (context, state) {
        final customer = state.extra as CollectionCustomer;
        return CollectionDetailScreen(customer: customer);
      },
    ),
    GoRoute(
      path: '/collections/register-payment',
      name: 'register-payment',
      builder: (context, state) {
        final customer = state.extra as CollectionCustomer;
        return RegisterPaymentScreen(customer: customer);
      },
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
          routes: [
            GoRoute(
              path: 'new-type',
              name: 'new-loan-type',
              builder: (context, state) => const NewLoanTypeScreen(),
            ),
            GoRoute(
              path: 'new-existing',
              name: 'new-loan-existing',
              builder: (context, state) => const ExistingClientLoanFormScreen(),
            ),
            GoRoute(
              path: 'new-client-step1',
              name: 'new-client-step1',
              builder: (context, state) => const NewClientStep1Screen(),
            ),
          ],
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
