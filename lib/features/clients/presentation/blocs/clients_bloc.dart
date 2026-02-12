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
    on<ClientsNextPageRequested>(_onNextPageRequested);
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
    // Reset to initial load
    await _loadClients(emit);
  }

  Future<void> _onNextPageRequested(
    ClientsNextPageRequested event,
    Emitter<ClientsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! ClientsLoaded || currentState.hasReachedMax) return;

    try {
      final currentClients = currentState.clients;
      // Fetch next page
      final result = await _repository.getClients(
        page: currentClients.length, // skip
        pageSize: 50, // take
      );

      result.fold(
        (newClients) {
          if (newClients.isEmpty) {
            emit(currentState.copyWith(hasReachedMax: true));
          } else {
            emit(
              currentState.copyWith(
                clients: List.of(currentClients)..addAll(newClients),
                hasReachedMax: false,
              ),
            );
          }
        },
        (failure) {
          // If error loading next page, maybe show snackbar or just ignore?
          // Keeping state as is or emitting error might replace the list with error view.
          // For now, let's keep it simple and maybe not emit error to avoid destroying list.
        },
      );
    } catch (_) {
      // Handle error
    }
  }

  Future<void> _onSearchChanged(
    ClientsSearchChanged event,
    Emitter<ClientsState> emit,
  ) async {
    emit(const ClientsLoading());
    await _loadClients(emit, query: event.query);
  }

  Future<void> _loadClients(Emitter<ClientsState> emit, {String? query}) async {
    final Map<String, dynamic> filter = {};
    if (query != null && query.isNotEmpty) {
      filter['q'] = query;
    }

    final result = await _repository.getClients(
      filter: filter.isNotEmpty ? filter : null,
      sort: ['name'],
      page: 0,
      pageSize: 50,
    );

    result.fold(
      (clients) =>
          emit(ClientsLoaded(clients, hasReachedMax: clients.length < 10)),
      (failure) => emit(ClientsError(failure.message)),
    );
  }
}
