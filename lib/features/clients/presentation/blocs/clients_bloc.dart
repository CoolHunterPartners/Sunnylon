import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/clients_repository.dart';
import 'clients_event.dart';
import 'clients_state.dart';

class ClientsBloc extends Bloc<ClientsEvent, ClientsState> {
  final ClientsRepository _repository;

  ClientsBloc(this._repository) : super(const ClientsInitial()) {
    on<ClientsStarted>(_onStarted);
    on<ClientsSearchChanged>(_onSearchChanged);
    on<ClientsRefreshed>(_onRefreshed);
  }

  Future<void> _onStarted(
    ClientsStarted event,
    Emitter<ClientsState> emit,
  ) async {
    emit(const ClientsLoading());
    await _loadClients(emit);
  }

  Future<void> _onRefreshed(
    ClientsRefreshed event,
    Emitter<ClientsState> emit,
  ) async {
    // Optionally show loading or just update
    // emit(const ClientsLoading()); // Depending on UX preference
    await _loadClients(emit);
  }

  Future<void> _onSearchChanged(
    ClientsSearchChanged event,
    Emitter<ClientsState> emit,
  ) async {
    // Debouncing should ideally be handled by a transformer,
    // but for simplicity/mvp we execute search immediately or rely on Repo.
    // For now, let's just trigger load with filter.
    emit(const ClientsLoading());
    await _loadClients(emit, query: event.query);
  }

  Future<void> _loadClients(Emitter<ClientsState> emit, {String? query}) async {
    final Map<String, dynamic> filter = {};
    if (query != null && query.isNotEmpty) {
      // Assuming 'q' or specific field filter for search.
      // Adjust key based on backend/repo implementation requirements.
      filter['q'] = query;
    }

    final result = await _repository.getClients(
      filter: filter.isNotEmpty ? filter : null,
    );

    result.fold(
      (clients) => emit(ClientsLoaded(clients)),
      (failure) => emit(ClientsError(failure.message)),
    );
  }
}
