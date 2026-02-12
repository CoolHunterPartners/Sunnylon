import 'package:equatable/equatable.dart';

import '../../../../../../core/common/helpers/app_failure.dart';
import '../../../domain/entities/common_types.dart';

sealed class CreateClientState extends Equatable {
  const CreateClientState();

  @override
  List<Object?> get props => [];
}

final class CreateClientInitial extends CreateClientState {}

final class CreateClientLoading extends CreateClientState {}

final class CreateClientLoaded extends CreateClientState {
  final CommonTypes commonTypes;

  const CreateClientLoaded(this.commonTypes);

  @override
  List<Object?> get props => [commonTypes];
}

final class CreateClientSubmitting extends CreateClientState {
  final CommonTypes commonTypes;

  const CreateClientSubmitting(this.commonTypes);

  @override
  List<Object?> get props => [commonTypes];
}

final class CreateClientSuccess extends CreateClientState {
  final String message;
  final CommonTypes commonTypes;

  const CreateClientSuccess(this.message, this.commonTypes);

  @override
  List<Object?> get props => [message, commonTypes];
}

final class CreateClientError extends CreateClientState {
  final AppFailure failure;
  final CommonTypes? commonTypes;

  const CreateClientError(this.failure, {this.commonTypes});

  @override
  List<Object?> get props => [failure, commonTypes];
}
