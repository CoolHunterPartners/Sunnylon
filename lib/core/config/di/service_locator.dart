import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:sunnylon/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:sunnylon/features/auth/presentation/blocs/login/login_bloc.dart';

import '../../../features/auth/data/data_sources/auth_remote_data_source.dart';
import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../../../features/auth/domain/use_cases/login_use_case.dart';
import '../../services/device/device_info_service.dart';
import '../../services/graphql/graphql_service.dart';
import '../../services/graphql/graphql_service_impl.dart';
import '../../services/local_storage/token_store_contract.dart';
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

  sl.registerLazySingleton<TokenStoreService>(() => SecureStorageTokenStore());

  sl.registerLazySingleton<GraphQLService>(
    () => GraphQLServiceImpl(sl<TokenStoreService>()),
  );

  //! Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<GraphQLService>()),
  );

  //! Repositories
  sl.registerLazySingleton<AuthRepository>(
    () =>
        AuthRepositoryImpl(sl<AuthRemoteDataSource>(), sl<TokenStoreService>()),
  );

  //! Use Cases
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepository>()));

  //! Core Config
  sl.registerLazySingleton(
    () => AppRouterRefreshNotifier(sl<AuthRepository>(), sl<NetworkInfo>()),
  );

  //! Blocs
  sl.registerLazySingleton<AuthBloc>(() => AuthBloc(sl<AuthRepository>()));
  sl.registerLazySingleton<LoginBloc>(() => LoginBloc(sl<LoginUseCase>()));
}
