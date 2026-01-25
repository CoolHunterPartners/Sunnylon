import 'package:drift/drift.dart';

class CurrencyTable extends Table {
  TextColumn get currencyId => text()(); // UUID
  TextColumn get currencyType => text().withLength(max: 50)();
  TextColumn get currencyDescription => text().withLength(max: 50)();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()(); // date
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {currencyId};
}
