import 'package:equatable/equatable.dart';

/// Clase base sealed para todos los fallos de la aplicación
sealed class AppFailure extends Equatable {
  const AppFailure({required this.message});

  final String message;

  // ✅ Factory constructors que pueden ser const
  const factory AppFailure.network({required String message}) = NetworkFailure;

  const factory AppFailure.database({
    required String message,
    String? details,
  }) = DatabaseFailure;

  const factory AppFailure.auth({
    required String message,
    String? field,
    String? userId,
  }) = AuthFailure;

  const factory AppFailure.server({required String message, int? statusCode}) =
      ServerFailure;

  const factory AppFailure.validation({
    required String message,
    String? field,
    Map<String, dynamic>? errors,
  }) = ValidationFailure;

  const factory AppFailure.common({required String message, String? details}) =
      CommonFailure;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'AppFailure(message: $message)';
}

/// Fallo de red
final class NetworkFailure extends AppFailure {
  const NetworkFailure({super.message = 'Error de red'});

  @override
  List<Object?> get props => [message];
}

/// Fallo de base de datos
final class DatabaseFailure extends AppFailure {
  const DatabaseFailure({
    super.message = 'Error de base de datos',
    this.details,
  });

  final String? details;

  @override
  List<Object?> get props => [message, details];
}

/// Fallo de autenticación
final class AuthFailure extends AppFailure {
  const AuthFailure({
    super.message = 'Ha ocurrido un error inesperado de autenticación',
    this.field,
    this.userId,
  });

  final String? field;
  final String? userId;

  @override
  List<Object?> get props => [message, field, userId];
}

/// Fallo del servidor
final class ServerFailure extends AppFailure {
  const ServerFailure({super.message = 'Error del servidor', this.statusCode});

  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

/// Fallo de validación
final class ValidationFailure extends AppFailure {
  const ValidationFailure({
    super.message = 'Error de validación',
    this.field,
    this.errors,
  });

  final String? field;
  final Map<String, dynamic>? errors;

  @override
  List<Object?> get props => [message, field, errors];
}

/// Fallo común
final class CommonFailure extends AppFailure {
  const CommonFailure({super.message = 'Error inesperado', this.details});

  final String? details;

  @override
  List<Object?> get props => [message, details];
}

/// Extensiones para obtener información de los fallos
extension AppFailureDetailsX on AppFailure {
  /// Obtiene información adicional para debugging
  Map<String, dynamic>? get debugInfo {
    return switch (this) {
      NetworkFailure() => null,
      DatabaseFailure(details: final details) =>
        details != null ? {'details': details} : null,
      AuthFailure(field: final field, userId: final userId) => {
        if (field != null) 'field': field,
        if (userId != null) 'userId': userId,
      },
      ServerFailure(statusCode: final statusCode) =>
        statusCode != null ? {'statusCode': statusCode} : null,
      ValidationFailure(field: final field, errors: final errors) => {
        if (field != null) 'field': field,
        if (errors != null) 'errors': errors,
      },
      CommonFailure(details: final details) =>
        details != null ? {'details': details} : null,
    };
  }

  /// Obtiene el tipo de fallo como string para logging
  String get failureType {
    return switch (this) {
      NetworkFailure() => 'network',
      DatabaseFailure() => 'database',
      AuthFailure() => 'auth',
      ServerFailure() => 'server',
      ValidationFailure() => 'validation',
      CommonFailure() => 'common',
    };
  }

  /// Obtiene información completa para debugging
  Map<String, dynamic> get fullDebugInfo {
    final baseInfo = <String, dynamic>{'type': failureType, 'message': message};

    final additionalInfo = debugInfo;
    if (additionalInfo != null) {
      baseInfo.addAll(additionalInfo);
    }

    return baseInfo;
  }
}
