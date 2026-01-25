import 'package:equatable/equatable.dart';

import 'app_failure.dart';

/// Clase base sealed para manejar resultados exitosos y fallidos
sealed class Result<T> extends Equatable {
  const Result();

  // ✅ Factory constructors que mantienen compatibilidad total
  const factory Result.success(T data) = Success<T>;
  const factory Result.failure(AppFailure failure) = Failure<T>;

  // ✅ Métodos de utilidad para verificar el estado
  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  // ✅ Acceso directo a datos (null si es failure)
  T? get data {
    return switch (this) {
      Success() => (this as Success<T>).data,
      Failure() => null,
    };
  }

  // ✅ Acceso directo al fallo (null si es success)
  AppFailure? get failure {
    return switch (this) {
      Success() => null,
      Failure() => (this as Failure<T>).failure,
    };
  }

  // ✅ Método fold para pattern matching funcional
  R fold<R>(R Function(T) onSuccess, R Function(AppFailure) onFailure) {
    return switch (this) {
      Success() => onSuccess((this as Success<T>).data),
      Failure() => onFailure((this as Failure<T>).failure),
    };
  }

  // ✅ Método map para transformar datos exitosos
  Result<R> map<R>(R Function(T) transform) {
    return switch (this) {
      Success() => Result.success(transform((this as Success<T>).data)),
      Failure() => Result.failure((this as Failure<T>).failure),
    };
  }

  // ✅ Método flatMap para encadenar operaciones
  Result<R> flatMap<R>(Result<R> Function(T) transform) {
    return switch (this) {
      Success() => transform((this as Success<T>).data),
      Failure() => Result.failure((this as Failure<T>).failure),
    };
  }

  // ✅ Método onSuccess para ejecutar código solo en éxito
  Result<T> onSuccess(void Function(T) callback) {
    if (this is Success<T>) {
      callback((this as Success<T>).data);
    }
    return this;
  }

  // ✅ Método onFailure para ejecutar código solo en fallo
  Result<T> onFailure(void Function(AppFailure) callback) {
    if (this is Failure<T>) {
      callback((this as Failure<T>).failure);
    }
    return this;
  }

  // ✅ Método getOrElse para obtener valor por defecto en caso de fallo
  T getOrElse(T defaultValue) {
    return switch (this) {
      Success() => (this as Success<T>).data,
      Failure() => defaultValue,
    };
  }

  // ✅ Método getOrThrow para lanzar excepción en caso de fallo
  T getOrThrow() {
    return switch (this) {
      Success() => (this as Success<T>).data,
      Failure() => throw Exception(
        'Result is a failure: ${(this as Failure<T>).failure.message}',
      ),
    };
  }

  @override
  List<Object?> get props => [];
}

/// Resultado exitoso
final class Success<T> extends Result<T> {
  const Success(this.data);

  @override
  final T data;

  @override
  List<Object?> get props => [data];

  @override
  String toString() => 'Success(data: $data)';
}

/// Resultado fallido
final class Failure<T> extends Result<T> {
  const Failure(this.failure);

  @override
  final AppFailure failure;

  @override
  List<Object?> get props => [failure];

  @override
  String toString() => 'Failure(failure: $failure)';
}

/// Extensiones adicionales para Result
extension ResultExtensions<T> on Result<T> {
  // ✅ Método para convertir a nullable
  T? toNullable() => data;

  // ✅ Método para verificar si tiene datos
  bool get hasData => data != null;

  // ✅ Método para obtener el mensaje de error
  String? get errorMessage => failure?.message;

  // ✅ Método para obtener el tipo de fallo
  String? get failureType => failure?.failureType;

  // ✅ Método para obtener información de debugging
  Map<String, dynamic>? get debugInfo => failure?.debugInfo;

  // ✅ Método para obtener información completa de debugging
  Map<String, dynamic>? get fullDebugInfo => failure?.fullDebugInfo;

  // ✅ Método para convertir a Either (si quisieras usar Either en el futuro)
  Either<AppFailure, T> toEither() {
    return switch (this) {
      Success() => Right((this as Success<T>).data),
      Failure() => Left((this as Failure<T>).failure),
    };
  }
}

/// Clase Either para compatibilidad futura (opcional)
sealed class Either<L, R> {
  const Either();

  const factory Either.left(L value) = Left<L, R>;
  const factory Either.right(R value) = Right<L, R>;

  bool get isLeft => this is Left<L, R>;
  bool get isRight => this is Right<L, R>;

  L? get left => switch (this) {
    Left() => (this as Left<L, R>).value,
    Right() => null,
  };

  R? get right => switch (this) {
    Left() => null,
    Right() => (this as Right<L, R>).value,
  };
}

final class Left<L, R> extends Either<L, R> {
  const Left(this.value);
  final L value;
}

final class Right<L, R> extends Either<L, R> {
  const Right(this.value);
  final R value;
}
