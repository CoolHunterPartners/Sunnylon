import '../../../../core/common/helpers/result.dart';
import '../entities/common_types.dart';
import '../repositories/clients_repository.dart';

class GetCommonTypesUseCase {
  final ClientsRepository _repository;

  GetCommonTypesUseCase(this._repository);

  Future<Result<CommonTypes>> call() {
    return _repository.getCommonTypes();
  }
}
