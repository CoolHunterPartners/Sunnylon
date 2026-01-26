import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// 🌐 Environment Configuration
///
/// Centraliza todas las variables de entorno de la aplicación.
/// Las variables se cargan desde el archivo .env
class Environment {
  // 🚀 Singleton pattern
  static final Environment _instance = Environment._internal();
  factory Environment() => _instance;
  Environment._internal();

  /// 🎯 Base URL del API
  static String get baseUrl {
    final url = dotenv.env['BASE_URL'] ?? 'https://api.sunnylon.com/graphql/';
    return url.endsWith('/') ? url : '$url/';
  }

  /// ⏱️ Timeout para requests HTTP (en milisegundos)
  static int get apiTimeout =>
      int.tryParse(dotenv.env['API_TIMEOUT'] ?? '30000') ?? 30000;

  /// 🔄 Número de intentos de reintento para requests fallidos
  static int get apiRetryAttempts =>
      int.tryParse(dotenv.env['API_RETRY_ATTEMPTS'] ?? '3') ?? 3;

  /// 🧪 Modo debug activado
  static bool get isDebugMode =>
      dotenv.env['DEBUG_MODE']?.toLowerCase() == 'true';

  /// 🌐 Determina qué archivo .env cargar según el entorno
  static String getEnvironmentFile() {
    if (kReleaseMode) {
      return '.env.production';
    }

    const env = String.fromEnvironment('ENV', defaultValue: 'dev');

    return switch (env) {
      'local' => '.env.local',
      'production' => '.env.production',
      'dev' => '.env.dev',
      _ => '.env.dev',
    };
  }
}
