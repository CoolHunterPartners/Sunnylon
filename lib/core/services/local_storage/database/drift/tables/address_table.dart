import 'package:drift/drift.dart';

class AddressTable extends Table {
  TextColumn get idAddress => text()(); // UUID
  TextColumn get addressName => text().withLength(max: 100)();
  TextColumn get idProvince => text().nullable()(); // UUID
  TextColumn get neighborhood => text().withLength(max: 50).nullable()();
  TextColumn get street => text().withLength(max: 50).nullable()();
  IntColumn get number => integer().nullable()();
  TextColumn get building => text().withLength(max: 50).nullable()();
  TextColumn get apartment => text().withLength(max: 50).nullable()();
  IntColumn get floor => integer().nullable()();
  TextColumn get longitude => text().withLength(max: 50).nullable()();
  TextColumn get latitude => text().withLength(max: 50).nullable()();
  TextColumn get companyId => text()(); // UUID
  BoolColumn get isActive => boolean()();
  DateTimeColumn get createdDate => dateTime()();
  TextColumn get userId => text().withLength(max: 50)();

  @override
  Set<Column> get primaryKey => {idAddress};
}
