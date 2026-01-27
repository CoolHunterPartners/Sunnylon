import 'package:drift/drift.dart';

import '../../../../../../core/services/local_storage/database/drift/app_database.dart';
import '../../../../../../core/services/local_storage/database/drift/tables/clientes_table.dart';

part 'clients_dao.g.dart';

@DriftAccessor(tables: [ClientesTable])
class ClientsDao extends DatabaseAccessor<AppDatabase> with _$ClientsDaoMixin {
  ClientsDao(super.db);

  Future<void> insertClients(List<ClientesTableCompanion> clients) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(clientesTable, clients);
    });
  }

  Future<List<ClientesTableData>> getClients({
    int limit = 10,
    int offset = 0,
    // Add sorting/filtering logic if needed later
  }) async {
    return (select(clientesTable)..limit(limit, offset: offset)).get();
  }
}
