import 'package:flutter/material.dart';
import 'package:sunnylon/core/theme/sunnylon_theme.dart';
import 'package:sunnylon/features/auth/presentation/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunnylon',
      theme: lightTheme,
      home: const LoginScreen(),
    );
  }
}
