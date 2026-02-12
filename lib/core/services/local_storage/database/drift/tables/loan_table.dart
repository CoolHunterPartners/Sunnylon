import 'package:drift/drift.dart';

class LoanTable extends Table {
  TextColumn get loanId => text()(); // UUID
  IntColumn get loanNo => integer()(); // Identity
  TextColumn get idClient => text()(); // UUID
  TextColumn get loanTermId => text()(); // UUID
  TextColumn get authorizeId => text().nullable()(); // UUID
  TextColumn get disbursementId => text().nullable()(); // UUID
  TextColumn get loanStateId => text()(); // UUID
  TextColumn get currencyId => text()(); // UUID
  TextColumn get loanTypeId => text()(); // UUID
  IntColumn get termCount => integer()();

  // Money type in SQL Server usually maps to Decimal/Real.
  // Using Real for simplicity in SQLite.
  RealColumn get amount => real()();

  // decimal(5,2)
  RealColumn get interestRate => real()();

  IntColumn get paymentDay => integer()();
  RealColumn get paymentAmount => real()();
  DateTimeColumn get loanDate => dateTime().withDefault(currentDate)();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {loanId};
}
