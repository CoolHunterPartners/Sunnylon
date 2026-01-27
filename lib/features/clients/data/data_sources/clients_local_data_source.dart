import '../../../../../../core/services/local_storage/database/drift/app_database.dart';
import 'daos/clients_dao.dart';

abstract class ClientsLocalDataSource {
  Future<List<ClientesTableData>> getClients({int page = 0, int pageSize = 10});
  Future<void> insertClients(List<ClientesTableCompanion> clients);
}

class ClientsLocalDataSourceImpl implements ClientsLocalDataSource {
  final ClientsDao _clientsDao;

  ClientsLocalDataSourceImpl(this._clientsDao);

  @override
  Future<List<ClientesTableData>> getClients({
    int page = 0,
    int pageSize = 10,
  }) {
    return _clientsDao.getClients(limit: pageSize, offset: page * pageSize);
  }

  @override
  Future<void> insertClients(List<ClientesTableCompanion> clients) {
    return _clientsDao.insertClients(clients);
  }
}
