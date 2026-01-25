import 'package:drift/drift.dart';

class BankAccountTable extends Table {
  TextColumn get bankAccountId => text()(); // UUID
  TextColumn get accountNumber => text().withLength(max: 20)();
  TextColumn get bankId => text()(); // UUID
  TextColumn get currencyId => text()(); // UUID
  TextColumn get accountTypeId => text()(); // UUID
  RealColumn get amount => real()(); // money
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()(); // date
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {bankAccountId};
}
