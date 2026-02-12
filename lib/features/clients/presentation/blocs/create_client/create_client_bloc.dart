import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/common_types.dart';
import '../../../domain/use_cases/create_client_use_case.dart';
import '../../../domain/use_cases/get_common_types_use_case.dart';
import 'create_client_event.dart';
import 'create_client_state.dart';

class CreateClientBloc extends Bloc<CreateClientEvent, CreateClientState> {
  final CreateClientUseCase _createClientUseCase;
  final GetCommonTypesUseCase _getCommonTypesUseCase;

  CreateClientBloc({
    required CreateClientUseCase createClientUseCase,
    required GetCommonTypesUseCase getCommonTypesUseCase,
  }) : _createClientUseCase = createClientUseCase,
       _getCommonTypesUseCase = getCommonTypesUseCase,
       super(CreateClientInitial()) {
    on<LoadCommonTypesEvent>(_onLoadCommonTypes);
    on<SubmitCreateClientEvent>(_onSubmitCreateClient);
    on<ResetCreateClientEvent>(_onResetCreateClient);
  }

  void _onResetCreateClient(
    ResetCreateClientEvent event,
    Emitter<CreateClientState> emit,
  ) {
    if (state is CreateClientSuccess) {
      emit(CreateClientLoaded((state as CreateClientSuccess).commonTypes));
    } else {
      // If we are not in success state, maybe we shouldn't reset or we should just reload?
      // For now, let's trigger a reload if we don't have types, or just ignore.
      add(LoadCommonTypesEvent());
    }
  }

  Future<void> _onLoadCommonTypes(
    LoadCommonTypesEvent event,
    Emitter<CreateClientState> emit,
  ) async {
    emit(CreateClientLoading());
    final result = await _getCommonTypesUseCase();
    result.fold(
      (commonTypes) => emit(CreateClientLoaded(commonTypes)),
      (failure) => emit(CreateClientError(failure)),
    );
  }

  Future<void> _onSubmitCreateClient(
    SubmitCreateClientEvent event,
    Emitter<CreateClientState> emit,
  ) async {
    final currentState = state;
    CommonTypes? commonTypes;

    if (currentState is CreateClientLoaded) {
      commonTypes = currentState.commonTypes;
    } else if (currentState is CreateClientError) {
      commonTypes = currentState.commonTypes;
    } else if (currentState is CreateClientSubmitting) {
      commonTypes = currentState.commonTypes;
    } else if (currentState is CreateClientSuccess) {
      commonTypes = currentState.commonTypes;
    }

    if (commonTypes == null) {
      // Should not happen if UI waits for load, but good to handle
      emit(CreateClientLoading()); // Or generic error
    } else {
      emit(CreateClientSubmitting(commonTypes));
    }

    final result = await _createClientUseCase(event.params);

    if (commonTypes != null) {
      result.fold(
        (message) => emit(CreateClientSuccess(message, commonTypes!)),
        (failure) => emit(CreateClientError(failure, commonTypes: commonTypes)),
      );
    }
  }
}
