import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnylon/features/home/domain/collection_customer.dart';

import '../../config/di/service_locator.dart';
import '../../router/shell/app_shell.dart';
import '../factories/page_factory.dart';
import 'app_router_refresh_notifier.dart';
import 'app_routes.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: AppRoute.login.path,
    refreshListenable: sl<AppRouterRefreshNotifier>(),
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      // final notifier = sl<AppRouterRefreshNotifier>();
      // final isLoggingIn = state.matchedLocation == AppRoute.login.path;
      // final isRecoveringPassword =
      //     state.matchedLocation == AppRoute.forgotPassword.path;

      // TODO: Uncomment when auth logic is ready
      // if (!notifier.isAuthenticated && !isLoggingIn && !isRecoveringPassword) {
      //   return AppRoute.login.path;
      // }

      // if (notifier.isAuthenticated && isLoggingIn) {
      //   return AppRoute.home.path;
      // }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoute.login.path,
        name: AppRoute.login.name,
        builder: (context, state) => PageFactory.createLogin(),
      ),
      GoRoute(
        path: AppRoute.forgotPassword.path,
        name: AppRoute.forgotPassword.name,
        builder: (context, state) => PageFactory.createForgotPassword(),
      ),
      GoRoute(
        path: AppRoute.collectionDetail.path,
        name: AppRoute.collectionDetail.name,
        builder: (context, state) {
          final customer = state.extra as CollectionCustomer;
          return PageFactory.createCollectionDetail(customer: customer);
        },
      ),
      GoRoute(
        path: AppRoute.registerPayment.path,
        name: AppRoute.registerPayment.name,
        builder: (context, state) {
          final customer = state.extra as CollectionCustomer;
          return PageFactory.createRegisterPayment(customer: customer);
        },
      ),

      // Wizard Routes (No Bottom Nav)
      GoRoute(
        path: AppRoute.newClientStep1.path,
        name: AppRoute.newClientStep1.name,
        builder: (context, state) => PageFactory.createNewClientStep1(),
      ),
      GoRoute(
        path: AppRoute.newClientStep2.path,
        name: AppRoute.newClientStep2.name,
        builder: (context, state) => PageFactory.createNewClientStep2(),
      ),
      GoRoute(
        path: AppRoute.newClientStep3.path,
        name: AppRoute.newClientStep3.name,
        builder: (context, state) => PageFactory.createNewClientStep3(),
      ),
      GoRoute(
        path: AppRoute.newClientStep4.path,
        name: AppRoute.newClientStep4.name,
        builder: (context, state) => PageFactory.createNewClientStep4(),
      ),
      GoRoute(
        path: AppRoute.newClientStep5.path,
        name: AppRoute.newClientStep5.name,
        builder: (context, state) => PageFactory.createNewClientStep5(),
      ),

      // Shell Route for Bottom Nav
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppShell(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoute.home.path,
            name: AppRoute.home.name,
            builder: (context, state) => PageFactory.createHome(),
          ),
          GoRoute(
            path: AppRoute.clients.path,
            name: AppRoute.clients.name,
            builder: (context, state) => PageFactory.createClients(),
          ),
          GoRoute(
            path: AppRoute.loans.path,
            name: AppRoute.loans.name,
            builder: (context, state) => PageFactory.createLoans(),
            routes: [
              GoRoute(
                path: AppRoute.newLoanType.path,
                name: AppRoute.newLoanType.name,
                builder: (context, state) => PageFactory.createNewLoanType(),
              ),
              GoRoute(
                path: AppRoute.newLoanExisting.path,
                name: AppRoute.newLoanExisting.name,
                builder: (context, state) =>
                    PageFactory.createNewLoanExisting(),
              ),
            ],
          ),
          GoRoute(
            path: AppRoute.settings.path,
            name: AppRoute.settings.name,
            builder: (context, state) => PageFactory.createSettings(),
          ),
        ],
      ),
    ],
  );
}
