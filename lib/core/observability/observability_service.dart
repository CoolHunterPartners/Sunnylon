abstract interface class ObservabilityService {
  /// Registra una excepción o error inesperado
  Future<void> recordError(
    Object error,
    StackTrace? stackTrace, {
    String? reason,
    Map<String, dynamic>? extraContext,
  });

  /// Registra un evento informativo o breadcrumb
  Future<void> log(String message);
}

class DebugConsoleObservabilityService implements ObservabilityService {
  @override
  Future<void> recordError(
    Object error,
    StackTrace? stackTrace, {
    String? reason,
    Map<String, dynamic>? extraContext,
  }) async {
    // Imprime en consola local de forma legible sin enviar a la nube
    print('🔴 [OBSERVABILITY LOG] Error: $error');
    if (reason != null) print('   Reason: $reason');
    if (stackTrace != null) print('   StackTrace: $stackTrace');
    if (extraContext != null && extraContext.isNotEmpty) {
      print('   ExtraContext: $extraContext');
    }
  }

  @override
  Future<void> log(String message) async {
    print('ℹ️ [OBSERVABILITY LOG]: $message');
  }
}

/// Implementación para entornos de producción (Sentry).
///
/// Nota: Opera como placeholder/stub hasta que se integre `sentry_flutter`.
class SentryObservabilityService implements ObservabilityService {
  @override
  Future<void> recordError(
    Object error,
    StackTrace? stackTrace, {
    String? reason,
    Map<String, dynamic>? extraContext,
  }) async {
    // TODO: Conectar con Sentry SDK al instalar sentry_flutter:
    // await Sentry.captureException(
    //   error,
    //   stackTrace: stackTrace,
    //   hint: reason != null ? Hint.withMap({'reason': reason}) : null,
    //   withScope: (scope) {
    //     if (extraContext != null) {
    //       scope.setContexts('extra', extraContext);
    //     }
    //   },
    // );
    print('🚀 [SENTRY STUB] Error captured: $error');
    if (reason != null) print('   Reason: $reason');
    if (stackTrace != null) print('   StackTrace: $stackTrace');
    if (extraContext != null && extraContext.isNotEmpty) {
      print('   ExtraContext: $extraContext');
    }
  }

  @override
  Future<void> log(String message) async {
    // TODO: Conectar con Sentry.addBreadcrumb al instalar sentry_flutter:
    // await Sentry.addBreadcrumb(Breadcrumb(message: message));
    print('🚀 [SENTRY STUB] Breadcrumb: $message');
  }
}

