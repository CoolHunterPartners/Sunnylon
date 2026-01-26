enum AppRoute {
  // Auth
  login('/login', 'login'),
  forgotPassword('/forgot-password', 'forgot-password'),

  // Home / Dashboard (Shell)
  home('/', 'home'),
  clients('/clients', 'clients'),
  loans('/loans', 'loans'),
  settings('/settings', 'settings'),

  // Collection
  collectionDetail('/collections/detail', 'collection-detail'),
  registerPayment('/collections/register-payment', 'register-payment'),

  // Loans Wizard
  newClientStep1('/loans/new-client-step1', 'new-client-step1'),
  newClientStep2('/loans/new-client-step2', 'new-client-step2'),
  newClientStep3('/loans/new-client-step3', 'new-client-step3'),
  newClientStep4('/loans/new-client-step4', 'new-client-step4'),
  newClientStep5('/loans/new-client-step5', 'new-client-step5'),

  // Loan Forms
  newLoanType('/loans/new-type', 'new-loan-type'),
  newLoanExisting('/loans/existing-client', 'new-loan-existing');

  const AppRoute(this.path, this.name);

  final String path;
  final String name;

  /// List of routes that require authentication
  static const List<AppRoute> protectedRoutes = [
    AppRoute.home,
    AppRoute.clients,
    AppRoute.loans,
    AppRoute.settings,
    AppRoute.collectionDetail,
    AppRoute.registerPayment,
    AppRoute.newClientStep1,
    AppRoute.newClientStep2,
    AppRoute.newClientStep3,
    AppRoute.newClientStep4,
    AppRoute.newClientStep5,
    AppRoute.newLoanType,
    AppRoute.newLoanExisting,
  ];
}
