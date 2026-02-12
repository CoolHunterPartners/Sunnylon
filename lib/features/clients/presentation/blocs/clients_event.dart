import 'package:equatable/equatable.dart';

sealed class ClientsEvent extends Equatable {
  const ClientsEvent();

  @override
  List<Object?> get props => [];
}

final class ClientsStarted extends ClientsEvent {
  const ClientsStarted();
}

final class ClientsSearchChanged extends ClientsEvent {
  final String query;

  const ClientsSearchChanged(this.query);

  @override
  List<Object?> get props => [query];
}

final class ClientsRefreshed extends ClientsEvent {
  const ClientsRefreshed();
}

final class ClientsNextPageRequested extends ClientsEvent {
  const ClientsNextPageRequested();
}
