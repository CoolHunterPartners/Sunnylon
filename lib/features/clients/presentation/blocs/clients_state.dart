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

  const ClientsLoaded(this.clients);

  @override
  List<Object?> get props => [clients];
}

final class ClientsError extends ClientsState {
  final String message;

  const ClientsError(this.message);

  @override
  List<Object?> get props => [message];
}
