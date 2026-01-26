import 'package:drift/drift.dart';

import '../../../../../../core/services/local_storage/database/drift/app_database.dart';
import '../../../../../../core/services/local_storage/database/drift/tables/users_profile_table.dart';

part 'users_profile_dao.g.dart';

@DriftAccessor(tables: [UsersProfileTable])
class UsersProfileDao extends DatabaseAccessor<AppDatabase>
    with _$UsersProfileDaoMixin {
  UsersProfileDao(super.db);

  Future<void> saveProfile(UsersProfileTableCompanion profile) async {
    // 1. Deactivate current active user
    await (update(usersProfileTable)
          ..where((tbl) => tbl.isCurrent.equals(true)))
        .write(const UsersProfileTableCompanion(isCurrent: Value(false)));

    // 2. Check if user exists by userId
    final existingUser =
        await (select(usersProfileTable)
              ..where((tbl) => tbl.userId.equals(profile.userId.value)))
            .getSingleOrNull();

    if (existingUser != null) {
      // 3. Update existing user: Use existing ID, set isCurrent=true
      final updatedProfile = profile.copyWith(isCurrent: const Value(true));
      await update(usersProfileTable).replace(updatedProfile);
    } else {
      // 4. Insert new user
      // Ensure isCurrent is true
      final newProfile = profile.copyWith(isCurrent: const Value(true));
      await into(usersProfileTable).insert(newProfile);
    }
  }

  Future<UsersProfileTableData?> getProfile() async {
    return await (select(
      usersProfileTable,
    )..where((tbl) => tbl.isCurrent.equals(true))).getSingleOrNull();
  }

  Future<void> setCurrentUser(String userId) async {
    await (update(usersProfileTable)
          ..where((tbl) => tbl.isCurrent.equals(true)))
        .write(const UsersProfileTableCompanion(isCurrent: Value(false)));

    await (update(usersProfileTable)..where((tbl) => tbl.userId.equals(userId)))
        .write(const UsersProfileTableCompanion(isCurrent: Value(true)));
  }

  Future<void> clearCurrentUser() async {
    // Mark all users as not current (logout)
    await (update(usersProfileTable)
          ..where((tbl) => tbl.isCurrent.equals(true)))
        .write(const UsersProfileTableCompanion(isCurrent: Value(false)));
  }
}
