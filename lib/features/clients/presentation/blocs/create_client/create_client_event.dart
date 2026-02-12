import 'package:equatable/equatable.dart';

import '../../../domain/entities/create_client_params.dart';

sealed class CreateClientEvent extends Equatable {
  const CreateClientEvent();

  @override
  List<Object> get props => [];
}

class LoadCommonTypesEvent extends CreateClientEvent {}

class SubmitCreateClientEvent extends CreateClientEvent {
  final CreateClientParams params;

  const SubmitCreateClientEvent(this.params);

  @override
  List<Object> get props => [params];
}

class ResetCreateClientEvent extends CreateClientEvent {}
