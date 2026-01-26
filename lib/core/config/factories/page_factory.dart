import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sunnylon/features/clients/presentation/clients_screen.dart';
import 'package:sunnylon/features/home/presentation/today_route_screen.dart';

import '../../../features/auth/domain/use_cases/login_use_case.dart';
import '../../../features/auth/presentation/blocs/login/login_bloc.dart';
// Screens
import '../../../features/auth/presentation/forgot_password/forgot_password_screen.dart';
import '../../../features/auth/presentation/login/login_screen.dart';
import '../../../features/loans/presentation/existing_client_loan_form_screen.dart';
import '../../../features/loans/presentation/loans_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step1_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step2_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step3_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step4_screen.dart';
import '../../../features/loans/presentation/new_client/new_client_step5_screen.dart';
import '../../../features/loans/presentation/new_loan_type_screen.dart';
import '../../../features/settings/presentation/settings_screen.dart';
import '../../config/di/service_locator.dart';

class PageFactory {
  /// Creates the login page
  static Widget createLoginPage() {
    return BlocProvider(
      create: (context) => LoginBloc(sl<LoginUseCase>()),
      child: const LoginScreen(),
    );
  }

  /// Creates the forgot password page
  static Widget createForgotPasswordPage() {
    return const ForgotPasswordScreen();
  }

  /// Creates the home page
  static Widget createHomePage() {
    return const TodayRouteScreen();
  }

  /// Creates the clients page
  static Widget createClientsPage() {
    return const ClientsScreen();
  }

  /// Creates the settings page
  static Widget createSettingsPage() {
    return const SettingsScreen();
  }

  /// Creates the loans page
  static Widget createLoansPage() {
    return const LoansScreen();
  }

  /// Creates the new loan type selection page
  static Widget createNewLoanTypePage() {
    return const NewLoanTypeScreen();
  }

  /// Creates the existing client loan form page
  static Widget createExistingClientLoanFormPage() {
    return const ExistingClientLoanFormScreen();
  }

  /// Creates the new client step 1 page
  static Widget createNewClientStep1Page() {
    return const NewClientStep1Screen();
  }

  /// Creates the new client step 2 page
  static Widget createNewClientStep2Page() {
    return const NewClientStep2Screen();
  }

  /// Creates the new client step 3 page
  static Widget createNewClientStep3Page() {
    return const NewClientStep3Screen();
  }

  /// Creates the new client step 4 page
  static Widget createNewClientStep4Page() {
    return const NewClientStep4Screen();
  }

  /// Creates the new client step 5 page
  static Widget createNewClientStep5Page() {
    return const NewClientStep5Screen();
  }
}
