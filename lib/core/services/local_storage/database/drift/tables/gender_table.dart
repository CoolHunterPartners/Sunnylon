import 'package:drift/drift.dart';

class GenderTable extends Table {
  TextColumn get idGender => text()(); // UUID
  TextColumn get description => text().withLength(max: 50).nullable()();
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {idGender};
}
