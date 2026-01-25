import 'package:drift/drift.dart';

class LoanTypeTable extends Table {
  TextColumn get loanTypeId => text()(); // UUID
  TextColumn get description => text().withLength(max: 50)();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {loanTypeId};
}
