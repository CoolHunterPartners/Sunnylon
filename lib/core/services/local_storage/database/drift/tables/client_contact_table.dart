import 'package:drift/drift.dart';

class ClientContactTable extends Table {
  TextColumn get clientContactId => text()(); // UUID
  TextColumn get clientId => text()(); // UUID
  TextColumn get description => text().withLength(max: 50)();
  TextColumn get phoneNumber => text().withLength(max: 10)();
  TextColumn get extension => text().withLength(max: 10).nullable()();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  // CreatedDate is int in DBML, but usually dates are date/datetime.
  // Sticking to DBML 'int' but naming it createdDateInt to be specific or matching type.
  // However, DBML says 'int', might be unix timestamp or error. Assuming int for now as per DBML.
  IntColumn get createdDate => integer()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {clientContactId};
}
