import 'package:drift/drift.dart';

class ClientAddressTable extends Table {
  TextColumn get clientId => text()(); // UUID
  TextColumn get addressId => text()(); // UUID

  // No PK defined in DBML (many-to-many link table), but good practice to have composite PK or unique constraints.
  // Assuming it's a link table.

  @override
  List<String> get customConstraints => ['PRIMARY KEY (client_id, address_id)'];
}
