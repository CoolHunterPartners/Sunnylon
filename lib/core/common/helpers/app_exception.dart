import 'package:equatable/equatable.dart';

import 'app_failure.dart';

/// Códigos de error para categorizar y debuggear excepciones
enum ErrorCode {
  // Network errors (1000-1999)
  noNetworkConnection(1000),
  connectionError(1001),
  timeOut(1002),

  // Database errors (2000-2999)
  databaseError(2000),

  // Auth errors (3000-3999)
  invalidCredentials(3000),
  userNotFound(3001),
  userDisabled(3002),

  // Server errors (4000-4999)
  serverError(4000),
  badRequest(4001),
  requestFormat(4002),

  // Common errors (5000-5999)
  notFound(5000),
  unexpected(5999);

  const ErrorCode(this.code);
  final int code;
}

/// Clase base sealed para todas las excepciones
sealed class AppException extends Equatable implements Exception {
  const AppException({required this.message, required this.code});

  final String message;
  final ErrorCode code;

  // ✅ Factory constructors que pueden ser const
  const factory AppException.network({
    required String message,
    required ErrorCode code,
  }) = NetworkException;

  const factory AppException.auth({
    required String message,
    required ErrorCode code,
  }) = AuthException;

  const factory AppException.database({required String message}) =
      DatabaseException;

  const factory AppException.server({
    required String message,
    required ErrorCode code,
  }) = ServerException;

  const factory AppException.validation({
    required String message,
    required ErrorCode code,
  }) = ValidationException;

  const factory AppException.common({
    required String message,
    required ErrorCode code,
  }) = CommonException;

  @override
  List<Object> get props => [message, code];

  @override
  String toString() => 'AppException(message: $message, code: $code)';
}

/// Excepción de red
final class NetworkException extends AppException {
  const NetworkException({super.message = 'Error de red', required super.code});

  @override
  List<Object> get props => [message, code];
}

/// Excepción de base de datos
final class DatabaseException extends AppException {
  const DatabaseException({
    super.message = 'Error de base de datos',
    super.code = ErrorCode.databaseError,
  });

  @override
  List<Object> get props => [message, code];
}

/// Excepción de autenticación
final class AuthException extends AppException {
  const AuthException({
    super.message = 'Ha ocurrido un error inesperado al autenticar',
    required super.code,
  });

  @override
  List<Object> get props => [message, code];
}

/// Excepción del servidor
final class ServerException extends AppException {
  const ServerException({
    super.message = 'Error del servidor',
    required super.code,
  });

  @override
  List<Object> get props => [message, code];
}

/// Excepción de validación
final class ValidationException extends AppException {
  const ValidationException({
    super.message = 'Error de validación',
    required super.code,
  });

  @override
  List<Object> get props => [message, code];
}

/// Excepción común
final class CommonException extends AppException {
  const CommonException({
    super.message = 'Error inesperado',
    required super.code,
  });

  @override
  List<Object> get props => [message, code];
}

/// Extensiones para obtener información de las excepciones
extension AppExceptionDetailsX on AppException {
  /// Convierte la excepción a un AppFailure correspondiente
  AppFailure get toAppFailure {
    return switch (this) {
      NetworkException() => _handleNetworkException(),
      DatabaseException() => AppFailure.database(message: message),
      AuthException() => AppFailure.auth(message: message),
      ServerException() => AppFailure.server(message: message),
      ValidationException() => AppFailure.validation(message: message),
      CommonException() => _handleCommonException(),
    };
  }

  /// Obtiene el código de error de la excepción
  int get errorCode => code.code;

  /// Obtiene información de debugging para logging
  Map<String, dynamic> get debugInfo {
    return switch (this) {
      NetworkException() => {
        'code': code.code,
        'type': 'network',
        'errorType': code.name,
      },
      DatabaseException() => {
        'code': code.code,
        'type': 'database',
        'errorType': code.name,
      },
      AuthException() => {
        'code': code.code,
        'type': 'auth',
        'errorType': code.name,
      },
      ServerException() => {
        'code': code.code,
        'type': 'server',
        'errorType': code.name,
      },
      ValidationException() => {
        'code': code.code,
        'type': 'validation',
        'errorType': code.name,
      },
      CommonException() => {
        'code': code.code,
        'type': 'common',
        'errorType': code.name,
      },
    };
  }

  /// Obtiene el tipo de error como string para logging
  String get errorType => code.name;

  /// Maneja las excepciones de red con lógica específica
  AppFailure _handleNetworkException() {
    switch (code) {
      case ErrorCode.noNetworkConnection:
        return AppFailure.network(message: message);
      case ErrorCode.connectionError:
      case ErrorCode.timeOut:
        return AppFailure.network(message: message);
      default:
        return AppFailure.network(message: message);
    }
  }

  /// Maneja las excepciones comunes con lógica específica
  AppFailure _handleCommonException() {
    switch (code) {
      case ErrorCode.notFound:
        return AppFailure.common(message: message);
      case ErrorCode.unexpected:
      default:
        return AppFailure.common(message: message);
    }
  }
}
