import 'package:drift/drift.dart';

class MembershipTable extends Table {
  TextColumn get membershipId => text()(); // UUID
  TextColumn get name => text().withLength(max: 50)();
  TextColumn get description => text().withLength(max: 100)();
  RealColumn get price => real()(); // money
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();

  @override
  Set<Column> get primaryKey => {membershipId};
}
