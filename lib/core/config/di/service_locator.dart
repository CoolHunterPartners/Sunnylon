import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';

import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../../services/device/device_info_service.dart';
import '../../services/network/network_info.dart';
import '../router/app_router_refresh_notifier.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  //! Services
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl<Connectivity>()),
  );
  sl.registerLazySingleton<DeviceInfoService>(() => DeviceInfoServiceImpl());

  sl.registerLazySingleton<Connectivity>(() => Connectivity());

  //! Repositories
  // Using dummy implementation for now as requested
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  //! Core Config
  sl.registerLazySingleton(
    () => AppRouterRefreshNotifier(sl<AuthRepository>(), sl<NetworkInfo>()),
  );

  // TODO: Register Feature dependencies (Blocs, UseCases, Repositories)
}
