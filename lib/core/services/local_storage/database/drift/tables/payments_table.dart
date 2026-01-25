import 'package:drift/drift.dart';

class PaymentsTable extends Table {
  TextColumn get paymentId => text()(); // UUID
  TextColumn get loanId => text()(); // UUID
  IntColumn get noPayment => integer()();
  RealColumn get amount => real()(); // decimal(18,2)
  RealColumn get interest => real()(); // decimal(18,2)
  RealColumn get remainingAmount => real()(); // decimal(18,2)
  DateTimeColumn get date => dateTime()();
  TextColumn get note => text().withLength(max: 100)();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {paymentId};
}
