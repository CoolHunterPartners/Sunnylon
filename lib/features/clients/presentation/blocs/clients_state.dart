import 'package:equatable/equatable.dart';

import '../../domain/entities/client.dart';

sealed class ClientsState extends Equatable {
  const ClientsState();

  @override
  List<Object?> get props => [];
}

final class ClientsInitial extends ClientsState {
  const ClientsInitial();
}

final class ClientsLoading extends ClientsState {
  const ClientsLoading();
}

final class ClientsLoaded extends ClientsState {
  final List<Client> clients;
  final bool hasReachedMax;

  const ClientsLoaded(this.clients, {this.hasReachedMax = false});

  ClientsLoaded copyWith({List<Client>? clients, bool? hasReachedMax}) {
    return ClientsLoaded(
      clients ?? this.clients,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object?> get props => [clients, hasReachedMax];
}

final class ClientsError extends ClientsState {
  final String message;

  const ClientsError(this.message);

  @override
  List<Object?> get props => [message];
}
