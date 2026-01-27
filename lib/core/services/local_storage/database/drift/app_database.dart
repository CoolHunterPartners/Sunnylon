import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../../../../../features/auth/data/data_sources/daos/users_profile_dao.dart';
import '../../../../../../features/clients/data/data_sources/daos/clients_dao.dart';
import 'tables/address_table.dart';
import 'tables/bank_account_table.dart';
import 'tables/client_address_table.dart';
import 'tables/client_contact_table.dart';
import 'tables/client_job_table.dart';
// Tables
import 'tables/clientes_table.dart';
import 'tables/company_table.dart';
import 'tables/currency_table.dart';
import 'tables/disbursement_table.dart';
import 'tables/gender_table.dart';
import 'tables/identification_type_table.dart';
import 'tables/late_payments_table.dart';
import 'tables/loan_authorization_table.dart';
import 'tables/loan_state_table.dart';
import 'tables/loan_table.dart';
import 'tables/loan_term_table.dart';
import 'tables/loan_type_table.dart';
import 'tables/membership_table.dart';
import 'tables/payments_table.dart';
import 'tables/provinces_table.dart';
import 'tables/users_profile_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    // 1. Clients Module
    ClientesTable,
    ClientContactTable,
    ClientJobTable,
    AddressTable,
    ClientAddressTable,
    IdentificationTypeTable,

    // 2. Loans Module
    LoanTable,
    LoanAuthorizationTable,
    LoanStateTable,
    LoanTermTable,
    LoanTypeTable,

    // 3. Finance & Core
    PaymentsTable,
    LatePaymentsTable,
    DisbursementTable,
    BankAccountTable,
    CurrencyTable,

    // 4. Config
    CompanyTable,
    MembershipTable,
    ProvincesTable,
    GenderTable,
    GenderTable,
    UsersProfileTable,
  ],
  daos: [UsersProfileDao, ClientsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Migration logic here
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'sunnylon.db'));
    return NativeDatabase.createInBackground(file);
  });
}
