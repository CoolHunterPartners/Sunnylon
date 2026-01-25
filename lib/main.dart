import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sunnylon/core/config/environment.dart';

import 'core/config/di/service_locator.dart' as di;
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔒 Force portrait orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 🌐 Load environment variables
  await dotenv.load(fileName: Environment.getEnvironmentFile());

  // ✅ Validate configuration (optional check)
  // Environment.validateConfig();

  // 💾 Initialize Service Locator
  await di.setUpServiceLocator();

  runApp(const MyApp());
}
