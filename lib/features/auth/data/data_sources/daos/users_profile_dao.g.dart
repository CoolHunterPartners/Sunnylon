// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_profile_dao.dart';

// ignore_for_file: type=lint
mixin _$UsersProfileDaoMixin on DatabaseAccessor<AppDatabase> {
  $UsersProfileTableTable get usersProfileTable =>
      attachedDatabase.usersProfileTable;
  UsersProfileDaoManager get managers => UsersProfileDaoManager(this);
}

class UsersProfileDaoManager {
  final _$UsersProfileDaoMixin _db;
  UsersProfileDaoManager(this._db);
  $$UsersProfileTableTableTableManager get usersProfileTable =>
      $$UsersProfileTableTableTableManager(
        _db.attachedDatabase,
        _db.usersProfileTable,
      );
}
