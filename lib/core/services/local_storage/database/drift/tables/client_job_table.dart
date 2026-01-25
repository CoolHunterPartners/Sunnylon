import 'package:drift/drift.dart';

class ClientJobTable extends Table {
  TextColumn get clientJobId => text()(); // UUID
  TextColumn get clientId => text()(); // UUID
  TextColumn get companyName => text().withLength(max: 200)();
  TextColumn get position => text().withLength(max: 200)();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  BoolColumn get currentJob => boolean().nullable()();

  // Drift doesn't have direct decimal support, usually stored as Real or Int (multiplied).
  // Using Real for now, but explicit Decimal migration might be needed for precision.
  RealColumn get salary => real()();

  TextColumn get immediateBoss => text().withLength(max: 100).nullable()();
  TextColumn get paymentFrequency => text().withLength(max: 15).nullable()();
  TextColumn get telephone => text().withLength(max: 10).nullable()();
  IntColumn get extension => integer().nullable()();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {clientJobId};
}
