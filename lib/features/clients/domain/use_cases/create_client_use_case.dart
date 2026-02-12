import '../../../../core/common/helpers/result.dart';
import '../entities/create_client_params.dart';
import '../repositories/clients_repository.dart';

class CreateClientUseCase {
  final ClientsRepository _repository;

  CreateClientUseCase(this._repository);

  Future<Result<String>> call(CreateClientParams params) {
    return _repository.createClient(params);
  }
}
