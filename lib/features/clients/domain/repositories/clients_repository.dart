import '../../../../core/common/helpers/result.dart';
import '../entities/client.dart';

abstract class ClientsRepository {
  Future<Result<List<Client>>> getClients({
    int page = 0,
    int pageSize = 10,
    List<dynamic>? sort, // Using dynamic for now as inputs are generated
    Map<String, dynamic>?
    filter, // Using dynamic for now as inputs are generated
  });
}
