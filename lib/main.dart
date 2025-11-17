import 'package:flutter/material.dart';
import 'package:sunnylon/core/router/app_router.dart';
import 'package:sunnylon/core/theme/sunnylon_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sunnylon',
      theme: lightTheme,
      routerConfig: router,
    );
  }
}
