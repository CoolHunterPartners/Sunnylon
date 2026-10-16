import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// 🌐 Environment Configuration
///
/// Define los entornos de la aplicación y centraliza las variables de entorno.
enum Environment {
  dev,
  prod,
  local;

  /// 🌐 Determina el entorno actual en ejecución
  static Environment get current {
    if (kReleaseMode) {
      return Environment.prod;
    }

    const env = String.fromEnvironment('ENV', defaultValue: 'dev');

    return switch (env) {
      'production' || 'prod' => Environment.prod,
      'local' => Environment.local,
      'dev' || _ => Environment.dev,
    };
  }

  /// Retorna el archivo .env correspondiente según el entorno
  String get fileName => switch (this) {
    Environment.prod => '.env.production',
    Environment.local => '.env.local',
    Environment.dev => '.env.dev',
  };

  /// Compatibilidad con llamadas previas
  static String getEnvironmentFile() => current.fileName;

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
}
