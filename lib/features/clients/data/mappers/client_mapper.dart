import 'package:drift/drift.dart';

import '../../../../core/api/graphql/queries/client_queries.graphql.dart';
import '../../../../core/services/local_storage/database/drift/app_database.dart';
import '../../domain/entities/client.dart';

extension ClientRemoteMapper on Query$GetClient$clients$items {
  Client toEntity() {
    return Client(
      id: idClient ?? '',
      fullName:
          fullName ??
          (name != null && lastName != null ? '$name $lastName' : ''),
      email: email ?? '',
    );
  }

  ClientesTableCompanion toCompanion() {
    return ClientesTableCompanion(
      idClient: Value(idClient ?? ''),
      name: Value(name ?? ''),
      lastName: Value(lastName ?? ''),
      // fullName is not in table
      email: Value(email ?? ''),
      identification: Value(identification ?? ''),
      phone: Value(phone ?? ''),
      birthDay: Value(
        birthDay != null
            ? DateTime.tryParse(birthDay as String) ?? DateTime.now()
            : DateTime.now(),
      ),

      // Default values for required fields not in query
      identificationTypeId: const Value(null),
      genderId: const Value(''), // Placeholder
      companyId: const Value(''), // Placeholder
      createdDate: Value(DateTime.now()),
      userId: const Value(''), // Placeholder
    );
  }
}

extension ClientLocalMapper on ClientesTableData {
  Client toEntity() {
    return Client(id: idClient, fullName: '$name $lastName', email: email);
  }
}
