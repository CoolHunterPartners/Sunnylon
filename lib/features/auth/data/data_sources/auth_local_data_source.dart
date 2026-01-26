import 'package:sunnylon/core/services/local_storage/database/drift/app_database.dart';
import 'package:sunnylon/features/auth/data/data_sources/daos/users_profile_dao.dart';

abstract class AuthLocalDataSource {
  Future<void> saveProfile(UsersProfileTableCompanion profile);
  Future<UsersProfileTableData?> getProfile();
  Future<void> clearCurrentUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final UsersProfileDao _usersProfileDao;

  AuthLocalDataSourceImpl(this._usersProfileDao);

  @override
  Future<UsersProfileTableData?> getProfile() {
    return _usersProfileDao.getProfile();
  }

  @override
  Future<void> saveProfile(UsersProfileTableCompanion profile) {
    return _usersProfileDao.saveProfile(profile);
  }

  @override
  Future<void> clearCurrentUser() {
    return _usersProfileDao.clearCurrentUser();
  }
}
