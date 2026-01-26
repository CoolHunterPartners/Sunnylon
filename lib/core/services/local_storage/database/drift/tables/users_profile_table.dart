import 'package:drift/drift.dart';

class UsersProfileTable extends Table {
  TextColumn get profileId => text().withLength(max: 50)();
  TextColumn get userId => text().withLength(max: 450)(); // Unique
  TextColumn get firstName => text().withLength(max: 50)();
  TextColumn get lastName => text().withLength(max: 50)();
  TextColumn get email => text().withLength(max: 100)(); // Unique
  TextColumn get phone => text().withLength(max: 10)();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdDate => dateTime().withDefault(currentDate)();
  BoolColumn get isCurrent => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {profileId};

  @override
  List<String> get customConstraints => ['UNIQUE (user_id)', 'UNIQUE (email)'];
}
