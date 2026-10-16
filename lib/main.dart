import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sunnylon/core/config/environment.dart';
import 'package:sunnylon/core/observability/app_bloc_observer.dart';
import 'package:sunnylon/core/observability/observability_service.dart';

import 'core/config/di/service_locator.dart' as di;
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔒 Force portrait orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final env = Environment.current;

  // 🌐 Load environment variables
  await dotenv.load(fileName: env.fileName);

  // ✅ Validate configuration (optional check)
  // Environment.validateConfig();

  // 💾 Initialize Service Locator
  await di.setUpServiceLocator(env);

  // 🔭 Global AppBlocObserver
  Bloc.observer = AppBlocObserver(observability: di.sl<ObservabilityService>());
  runApp(const MyApp());
}
