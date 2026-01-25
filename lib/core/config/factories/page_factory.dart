import 'package:flutter/material.dart';

// Screens
import '../../../features/auth/presentation/forgot_password/forgot_password_screen.dart';
import '../../../features/auth/presentation/login/login_screen.dart';
import '../../../features/clients/presentation/clients_screen.dart';
import '../../../features/home/domain/collection_customer.dart';
import '../../../features/home/presentation/collection_detail_screen.dart';
import '../../../features/home/presentation/register_payment_screen.dart';
import '../../../features/home/presentation/today_route_screen.dart';
import '../../../features/loans/presentation/existing_client_loan_form_screen.dart';
import '../../../features/loans/presentation/loans_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step1_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step2_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step3_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step4_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step5_screen.dart';
import '../../../features/loans/presentation/new_loan_type_screen.dart';
import '../../../features/settings/presentation/settings_screen.dart';

class PageFactory {
  /// Creates the login page
  static Widget createLogin() {
    return const LoginScreen();
  }

  /// Creates the forgot password page
  static Widget createForgotPassword() {
    return const ForgotPasswordScreen();
  }

  /// Creates the home page (Today Route)
  static Widget createHome() {
    return const TodayRouteScreen();
  }

  /// Creates clients page
  static Widget createClients() {
    return const ClientsScreen();
  }

  /// Creates loans page
  static Widget createLoans() {
    return const LoansScreen();
  }

  /// Creates settings page
  static Widget createSettings() {
    return const SettingsScreen();
  }

  /// Creates collection detail page
  static Widget createCollectionDetail({required CollectionCustomer customer}) {
    return CollectionDetailScreen(customer: customer);
  }

  /// Creates register payment page
  static Widget createRegisterPayment({required CollectionCustomer customer}) {
    return RegisterPaymentScreen(customer: customer);
  }

  // Loans Wizard Pages
  static Widget createNewClientStep1() => const NewClientStep1Screen();
  static Widget createNewClientStep2() => const NewClientStep2Screen();
  static Widget createNewClientStep3() => const NewClientStep3Screen();
  static Widget createNewClientStep4() => const NewClientStep4Screen();
  static Widget createNewClientStep5() => const NewClientStep5Screen();

  // Loan Forms
  static Widget createNewLoanType() => const NewLoanTypeScreen();
  static Widget createNewLoanExisting() => const ExistingClientLoanFormScreen();

  /// Creates no network page (placeholder)
  static Widget createNoNetwork() {
    return const Scaffold(body: Center(child: Text('No Network Connection')));
  }
}
