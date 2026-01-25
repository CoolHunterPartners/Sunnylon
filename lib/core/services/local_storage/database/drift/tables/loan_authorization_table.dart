import 'package:drift/drift.dart';

class LoanAuthorizationTable extends Table {
  TextColumn get authorizationId => text()(); // UUID
  TextColumn get authorizeBy => text().withLength(max: 50)();
  DateTimeColumn get authorizeDate => dateTime()();
  TextColumn get comment => text().nullable()(); // MAX
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {authorizationId};
}
