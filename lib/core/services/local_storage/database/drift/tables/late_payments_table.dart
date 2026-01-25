import 'package:drift/drift.dart';

class LatePaymentsTable extends Table {
  TextColumn get idLatePayment => text()(); // UUID
  TextColumn get loanId => text()(); // UUID
  RealColumn get latePayment => real()(); // decimal(18,2)
  IntColumn get cantOverdue => integer()();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {idLatePayment};
}
