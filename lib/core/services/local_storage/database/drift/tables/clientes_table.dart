import 'package:drift/drift.dart';

class ClientesTable extends Table {
  TextColumn get idClient => text()(); // UUID
  TextColumn get name => text().withLength(max: 50)();
  TextColumn get lastName => text().withLength(max: 50)();
  TextColumn get identificationTypeId => text().nullable()(); // UUID
  TextColumn get identification => text().withLength(max: 11)(); // nvarchar(11)
  DateTimeColumn get birthDay => dateTime()();
  TextColumn get genderId => text()(); // UUID
  TextColumn get phone => text().withLength(max: 10)();
  TextColumn get email => text().withLength(max: 100)();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {idClient};

  @override
  List<String> get customConstraints => ['UNIQUE (email, identification)'];
}
