import 'package:drift/drift.dart';

class DisbursementTable extends Table {
  TextColumn get disbursementId => text()(); // UUID
  TextColumn get authorizeBy => text().withLength(max: 50)();
  RealColumn get amount => real()(); // money
  DateTimeColumn get disbursementDate => dateTime()();
  TextColumn get disbursementDestination => text().withLength(max: 200)();
  TextColumn get comment => text()(); // MAX
  TextColumn get bankAccountId => text()(); // UUID
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()(); // date type in dbml
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {disbursementId};
}
