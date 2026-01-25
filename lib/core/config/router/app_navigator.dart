import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class AppNavigator {
  // Static methods for specific routes
  static void goToLogin(BuildContext context) =>
      context.goNamed(AppRoute.login.name);

  static void goToForgotPassword(BuildContext context) =>
      context.goNamed(AppRoute.forgotPassword.name);

  static void goToHome(BuildContext context) =>
      context.goNamed(AppRoute.home.name);

  static void goToClients(BuildContext context) =>
      context.goNamed(AppRoute.clients.name);

  static void goToLoans(BuildContext context) =>
      context.goNamed(AppRoute.loans.name);

  static void goToSettings(BuildContext context) =>
      context.goNamed(AppRoute.settings.name);

  static void goToCollectionDetail(BuildContext context, {Object? extra}) =>
      context.goNamed(AppRoute.collectionDetail.name, extra: extra);

  static void goToRegisterPayment(BuildContext context, {Object? extra}) =>
      context.goNamed(AppRoute.registerPayment.name, extra: extra);

  // Wizard Navigation
  static void goToNewClientStep1(BuildContext context) =>
      context.goNamed(AppRoute.newClientStep1.name);

  static void goToNewClientStep2(BuildContext context) =>
      context.goNamed(AppRoute.newClientStep2.name);

  static void goToNewClientStep3(BuildContext context) =>
      context.goNamed(AppRoute.newClientStep3.name);

  static void goToNewClientStep4(BuildContext context) =>
      context.goNamed(AppRoute.newClientStep4.name);

  static void goToNewClientStep5(BuildContext context) =>
      context.goNamed(AppRoute.newClientStep5.name);

  // Loan Forms
  static void goToNewLoanType(BuildContext context) =>
      context.goNamed(AppRoute.newLoanType.name);

  static void goToNewLoanExisting(BuildContext context) =>
      context.goNamed(AppRoute.newLoanExisting.name);

  // Generic methods
  static void goTo(BuildContext context, AppRoute route, {Object? extra}) =>
      context.goNamed(route.name, extra: extra);

  static void pushTo(BuildContext context, AppRoute route, {Object? extra}) =>
      context.pushNamed(route.name, extra: extra);

  static void pop(BuildContext context) => context.pop();
}
