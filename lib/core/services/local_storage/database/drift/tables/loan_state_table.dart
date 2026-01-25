import 'package:drift/drift.dart';

class LoanStateTable extends Table {
  TextColumn get loanStateId => text()(); // UUID
  TextColumn get description => text().withLength(max: 50).nullable()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {loanStateId};
}
