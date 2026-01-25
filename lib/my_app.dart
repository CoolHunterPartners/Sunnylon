import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:sunnylon/core/config/theme/sunnylon_theme.dart'
    as SunnylonTheme;

import 'core/common/constants/app_constants.dart';
import 'core/common/extensions/responsive/responsive_extensions.dart';
import 'core/config/di/service_locator.dart';
import 'core/config/router/app_router.dart';
import 'core/config/router/app_router_refresh_notifier.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting('es_ES', null);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return ChangeNotifierProvider.value(
          value: sl<AppRouterRefreshNotifier>(),
          // child: MultiBlocProvider(
          //   providers: [
          //     // TODO: Add global Blocs here (e.g., AuthBloc, SyncStatusBloc)
          //     // BlocProvider.value(value: sl<AuthBloc>()),
          //   ],
          child: MaterialApp.router(
            title: AppConstants.appTitle,
            debugShowCheckedModeBanner: false,
            theme: SunnylonTheme.lightTheme,
            // darkTheme: AppTheme.darkTheme, // Optional
            locale: const Locale('es', 'ES'),
            supportedLocales: const [Locale('es', 'ES'), Locale('en', 'US')],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routerConfig: AppRouter.router,
          ),
          // ),
        );
      },
    );
  }
}
