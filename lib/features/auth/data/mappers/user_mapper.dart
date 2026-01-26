import 'package:drift/drift.dart';

import '../../../../core/api/graphql/queries/auth_queries.graphql.dart';
import '../../../../core/services/local_storage/database/drift/app_database.dart';
import '../../domain/entities/user.dart';

extension UsersProfileTableDataMapper on UsersProfileTableData {
  User toEntity() {
    return User(
      id: userId,
      email: email,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
    );
  }
}

extension ProfileQueryMapper on Query$Profile$profile {
  UsersProfileTableCompanion toCompanion() {
    return UsersProfileTableCompanion(
      userId: Value(userId ?? ''),
      email: Value(email ?? ''),
      firstName: Value(firstName ?? ''),
      lastName: Value(lastName ?? ''),
      phone: Value(phone ?? ''),
      isActive: const Value(true),
      isCurrent: const Value(true),
    );
  }

  User toEntity() {
    return User(
      id: userId ?? '',
      email: email ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      phone: phone ?? '',
    );
  }
}
