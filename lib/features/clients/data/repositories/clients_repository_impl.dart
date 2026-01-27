import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../core/common/helpers/app_failure.dart';
import '../../../../core/common/helpers/result.dart';
import '../../domain/entities/client.dart';
import '../../domain/repositories/clients_repository.dart';
import '../data_sources/clients_local_data_source.dart';
import '../data_sources/clients_remote_data_source.dart';
import '../mappers/client_mapper.dart';

class ClientsRepositoryImpl implements ClientsRepository {
  final ClientsRemoteDataSource _remoteDataSource;
  final ClientsLocalDataSource _localDataSource;

  ClientsRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Result<List<Client>>> getClients({
    int page = 0,
    int pageSize = 10,
    List<dynamic>? sort,
    Map<String, dynamic>? filter,
  }) async {
    try {
      // 1. Fetch from Local DB first (Offline First)
      final localData = await _localDataSource.getClients(
        page: page,
        pageSize: pageSize,
      );
      final hasLocalData = localData.isNotEmpty;

      // 2. Check connectivity
      final connectivityResult = await Connectivity().checkConnectivity();
      final hasConnection = !connectivityResult.contains(
        ConnectivityResult.none,
      );

      if (hasConnection) {
        try {
          final remoteData = await _remoteDataSource.getClients(
            page: page,
            pageSize: pageSize,
          );

          if (remoteData.items != null) {
            final companions = remoteData.items!
                .where((item) => item != null)
                .map((item) => item!.toCompanion())
                .toList();

            await _localDataSource.insertClients(companions);
          }
        } catch (e) {
          // If remote fails but we have local data, continue to return it
          // Only return error if we really don't have ANY data
          if (!hasLocalData) {
            if (e is AppFailure) return Result.failure(e);
            return Result.failure(AppFailure.server(message: e.toString()));
          }
          // Else: Log error?
        }
      }

      // 3. Return Local Data (Single Source of Truth)
      // Re-fetch to get the latest (including inserts/updates)
      final updatedLocalData = await _localDataSource.getClients(
        page: page,
        pageSize: pageSize,
      );
      final entities = updatedLocalData.map((e) => e.toEntity()).toList();

      return Result.success(entities);
    } catch (e) {
      if (e is AppFailure) {
        return Result.failure(e);
      }
      return Result.failure(AppFailure.common(message: e.toString()));
    }
  }
}
