import 'package:drift/drift.dart';

class ProvincesTable extends Table {
  TextColumn get provinceId => text()(); // UUID
  TextColumn get provinceName => text().withLength(max: 100)();
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {provinceId};
}
