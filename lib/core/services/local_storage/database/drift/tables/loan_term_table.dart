import 'package:drift/drift.dart';

class LoanTermTable extends Table {
  TextColumn get loanTermId => text()(); // UUID
  TextColumn get termFrecuency => text().withLength(max: 10)();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {loanTermId};
}
