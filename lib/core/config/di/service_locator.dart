import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:sunnylon/features/auth/domain/use_cases/login_use_case.dart';
import 'package:sunnylon/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:sunnylon/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:sunnylon/features/clients/data/data_sources/clients_local_data_source.dart';
import 'package:sunnylon/features/clients/data/data_sources/clients_remote_data_source.dart';
import 'package:sunnylon/features/clients/data/data_sources/daos/clients_dao.dart';
import 'package:sunnylon/features/clients/data/repositories/clients_repository_impl.dart';
import 'package:sunnylon/features/clients/domain/repositories/clients_repository.dart';
import 'package:sunnylon/features/clients/domain/use_cases/create_client_use_case.dart';
import 'package:sunnylon/features/clients/domain/use_cases/get_common_types_use_case.dart';
import 'package:sunnylon/features/clients/presentation/blocs/clients_bloc.dart';
import 'package:sunnylon/features/clients/presentation/blocs/create_client/create_client_bloc.dart';

import '../../../features/auth/data/data_sources/auth_local_data_source.dart';
import '../../../features/auth/data/data_sources/auth_remote_data_source.dart';
import '../../../features/auth/data/data_sources/daos/users_profile_dao.dart';
import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../../services/device/device_info_service.dart';
import '../../services/graphql/graphql_service.dart';
import '../../services/graphql/graphql_service_impl.dart';
import '../../services/local_storage/database/drift/app_database.dart';
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

  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());

  sl.registerLazySingleton<TokenStoreService>(() => SecureStorageTokenStore());

  sl.registerLazySingleton<GraphQLService>(
    () => GraphQLServiceImpl(sl<TokenStoreService>()),
  );
  //! DAOs
  sl.registerLazySingleton<ClientsDao>(() => ClientsDao(sl<AppDatabase>()));
  sl.registerLazySingleton<UsersProfileDao>(
    () => UsersProfileDao(sl<AppDatabase>()),
  );

  //! Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<GraphQLService>()),
  );

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sl<UsersProfileDao>()),
  );
  sl.registerLazySingleton<ClientsRemoteDataSource>(
    () => ClientsRemoteDataSourceImpl(sl<GraphQLService>()),
  );
  sl.registerLazySingleton<ClientsLocalDataSource>(
    () => ClientsLocalDataSourceImpl(sl<ClientsDao>()),
  );

  //! Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl<AuthRemoteDataSource>(),
      sl<AuthLocalDataSource>(),
      sl<TokenStoreService>(),
    ),
  );
  sl.registerLazySingleton<ClientsRepository>(
    () => ClientsRepositoryImpl(
      sl<ClientsRemoteDataSource>(),
      sl<ClientsLocalDataSource>(),
    ),
  );

  //! Use Cases
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => CreateClientUseCase(sl<ClientsRepository>()));
  sl.registerLazySingleton(
    () => GetCommonTypesUseCase(sl<ClientsRepository>()),
  );

  //! Core Config
  sl.registerLazySingleton(
    () => AppRouterRefreshNotifier(sl<AuthRepository>(), sl<NetworkInfo>()),
  );

  //! Blocs
  sl.registerLazySingleton<AuthBloc>(() => AuthBloc(sl<AuthRepository>()));
  sl.registerLazySingleton<LoginBloc>(() => LoginBloc(sl<LoginUseCase>()));
  sl.registerLazySingleton<ClientsBloc>(
    () => ClientsBloc(sl<ClientsRepository>()),
  );
  sl.registerFactory<CreateClientBloc>(
    () => CreateClientBloc(
      createClientUseCase: sl<CreateClientUseCase>(),
      getCommonTypesUseCase: sl<GetCommonTypesUseCase>(),
    ),
  );
}
