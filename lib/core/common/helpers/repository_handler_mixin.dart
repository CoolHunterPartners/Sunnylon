import 'package:get_it/get_it.dart';
import 'package:sunnylon/core/common/helpers/app_failure.dart';
import 'package:sunnylon/core/common/helpers/result.dart';
import 'package:sunnylon/core/observability/observability_service.dart';

mixin RepositoryHandlerMixin {
  /// Obtiene la instancia del servicio de observabilidad inyectado.
  /// Si no usas GetIt, puedes definirlo como un getter abstracto:
  /// `ObservabilityService get observabilityService;`
  ObservabilityService get _observability => GetIt.I<ObservabilityService>();

  /// Encapsula la ejecución de llamadas asíncronas, el reporte a observabilidad
  /// y el mapeo seguro a [Result<T>].
  Future<Result<T>> guardResult<T>(
    Future<T> Function() action, {
    String? contextMessage,
  }) async {
    try {
      final data = await action();
      return Result.success(data);
    } catch (e, stackTrace) {
      // 1. Reporta automáticamente a Sentry/Crashlytics sin acoplarse al SDK
      await _observability.recordError(e, stackTrace, reason: contextMessage);

      // 2. Retorna la falla mapeada a tu tipo AppFailure de dominio
      return Result.failure(AppFailure.fromError(e));
    }
  }
}
