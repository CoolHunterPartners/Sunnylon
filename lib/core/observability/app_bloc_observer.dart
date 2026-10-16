import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'observability_service.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({ObservabilityService? observability})
    : _observability = observability ?? GetIt.I<ObservabilityService>();

  final ObservabilityService _observability;

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _observability.log('🟢 [BLOC CREATED]: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // Registra el evento como Breadcrumb en Sentry/Crashlytics
    _observability.log('⚡ [EVENT]: ${bloc.runtimeType} -> $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // Útil para debugging local o logs de transición reducidos
    _observability.log(
      '🔄 [STATE CHANGE]: ${bloc.runtimeType} '
      'from ${change.currentState.runtimeType} '
      'to ${change.nextState.runtimeType}',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    // Reporta excepciones no capturadas directamente al servicio de observabilidad
    _observability.recordError(
      error,
      stackTrace,
      reason: 'Unhandled error in ${bloc.runtimeType}',
    );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _observability.log('🔴 [BLOC CLOSED]: ${bloc.runtimeType}');
  }
}
