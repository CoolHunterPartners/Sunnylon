import 'package:drift/drift.dart';

class CompanyTable extends Table {
  TextColumn get companyId => text()(); // UUID
  TextColumn get membershipId => text().nullable()(); // UUID
  TextColumn get name => text().withLength(max: 50)();
  TextColumn get slogan => text().withLength(max: 180).nullable()();
  IntColumn get rnc => integer().nullable()();
  TextColumn get address => text().withLength(max: 100).nullable()();
  TextColumn get phone => text().withLength(max: 12).nullable()();
  TextColumn get email => text().withLength(max: 100).nullable()();
  TextColumn get logo => text().withLength(max: 100).nullable()();
  BoolColumn get isFinancial => boolean()();
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50).nullable()();

  @override
  Set<Column> get primaryKey => {companyId};
}
