import 'package:drift/drift.dart';

class IdentificationTypeTable extends Table {
  TextColumn get identificationTypeId => text()(); // UUID
  TextColumn get identificationTypeName => text().withLength(max: 15)();
  BoolColumn get isActive => boolean()();

  @override
  Set<Column> get primaryKey => {identificationTypeId};
}
