// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ClientesTableTable extends ClientesTable
    with TableInfo<$ClientesTableTable, ClientesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idClientMeta = const VerificationMeta(
    'idClient',
  );
  @override
  late final GeneratedColumn<String> idClient = GeneratedColumn<String>(
    'id_client',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _identificationTypeIdMeta =
      const VerificationMeta('identificationTypeId');
  @override
  late final GeneratedColumn<String> identificationTypeId =
      GeneratedColumn<String>(
        'identification_type_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _identificationMeta = const VerificationMeta(
    'identification',
  );
  @override
  late final GeneratedColumn<String> identification = GeneratedColumn<String>(
    'identification',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 11),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _birthDayMeta = const VerificationMeta(
    'birthDay',
  );
  @override
  late final GeneratedColumn<DateTime> birthDay = GeneratedColumn<DateTime>(
    'birth_day',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderIdMeta = const VerificationMeta(
    'genderId',
  );
  @override
  late final GeneratedColumn<String> genderId = GeneratedColumn<String>(
    'gender_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idClient,
    name,
    lastName,
    identificationTypeId,
    identification,
    birthDay,
    genderId,
    phone,
    email,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClientesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_client')) {
      context.handle(
        _idClientMeta,
        idClient.isAcceptableOrUnknown(data['id_client']!, _idClientMeta),
      );
    } else if (isInserting) {
      context.missing(_idClientMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('identification_type_id')) {
      context.handle(
        _identificationTypeIdMeta,
        identificationTypeId.isAcceptableOrUnknown(
          data['identification_type_id']!,
          _identificationTypeIdMeta,
        ),
      );
    }
    if (data.containsKey('identification')) {
      context.handle(
        _identificationMeta,
        identification.isAcceptableOrUnknown(
          data['identification']!,
          _identificationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificationMeta);
    }
    if (data.containsKey('birth_day')) {
      context.handle(
        _birthDayMeta,
        birthDay.isAcceptableOrUnknown(data['birth_day']!, _birthDayMeta),
      );
    } else if (isInserting) {
      context.missing(_birthDayMeta);
    }
    if (data.containsKey('gender_id')) {
      context.handle(
        _genderIdMeta,
        genderId.isAcceptableOrUnknown(data['gender_id']!, _genderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_genderIdMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idClient};
  @override
  ClientesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientesTableData(
      idClient: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_client'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      )!,
      identificationTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identification_type_id'],
      ),
      identification: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identification'],
      )!,
      birthDay: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}birth_day'],
      )!,
      genderId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender_id'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $ClientesTableTable createAlias(String alias) {
    return $ClientesTableTable(attachedDatabase, alias);
  }
}

class ClientesTableData extends DataClass
    implements Insertable<ClientesTableData> {
  final String idClient;
  final String name;
  final String lastName;
  final String? identificationTypeId;
  final String identification;
  final DateTime birthDay;
  final String genderId;
  final String phone;
  final String email;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const ClientesTableData({
    required this.idClient,
    required this.name,
    required this.lastName,
    this.identificationTypeId,
    required this.identification,
    required this.birthDay,
    required this.genderId,
    required this.phone,
    required this.email,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_client'] = Variable<String>(idClient);
    map['name'] = Variable<String>(name);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || identificationTypeId != null) {
      map['identification_type_id'] = Variable<String>(identificationTypeId);
    }
    map['identification'] = Variable<String>(identification);
    map['birth_day'] = Variable<DateTime>(birthDay);
    map['gender_id'] = Variable<String>(genderId);
    map['phone'] = Variable<String>(phone);
    map['email'] = Variable<String>(email);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  ClientesTableCompanion toCompanion(bool nullToAbsent) {
    return ClientesTableCompanion(
      idClient: Value(idClient),
      name: Value(name),
      lastName: Value(lastName),
      identificationTypeId: identificationTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(identificationTypeId),
      identification: Value(identification),
      birthDay: Value(birthDay),
      genderId: Value(genderId),
      phone: Value(phone),
      email: Value(email),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory ClientesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientesTableData(
      idClient: serializer.fromJson<String>(json['idClient']),
      name: serializer.fromJson<String>(json['name']),
      lastName: serializer.fromJson<String>(json['lastName']),
      identificationTypeId: serializer.fromJson<String?>(
        json['identificationTypeId'],
      ),
      identification: serializer.fromJson<String>(json['identification']),
      birthDay: serializer.fromJson<DateTime>(json['birthDay']),
      genderId: serializer.fromJson<String>(json['genderId']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String>(json['email']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idClient': serializer.toJson<String>(idClient),
      'name': serializer.toJson<String>(name),
      'lastName': serializer.toJson<String>(lastName),
      'identificationTypeId': serializer.toJson<String?>(identificationTypeId),
      'identification': serializer.toJson<String>(identification),
      'birthDay': serializer.toJson<DateTime>(birthDay),
      'genderId': serializer.toJson<String>(genderId),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String>(email),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  ClientesTableData copyWith({
    String? idClient,
    String? name,
    String? lastName,
    Value<String?> identificationTypeId = const Value.absent(),
    String? identification,
    DateTime? birthDay,
    String? genderId,
    String? phone,
    String? email,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => ClientesTableData(
    idClient: idClient ?? this.idClient,
    name: name ?? this.name,
    lastName: lastName ?? this.lastName,
    identificationTypeId: identificationTypeId.present
        ? identificationTypeId.value
        : this.identificationTypeId,
    identification: identification ?? this.identification,
    birthDay: birthDay ?? this.birthDay,
    genderId: genderId ?? this.genderId,
    phone: phone ?? this.phone,
    email: email ?? this.email,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  ClientesTableData copyWithCompanion(ClientesTableCompanion data) {
    return ClientesTableData(
      idClient: data.idClient.present ? data.idClient.value : this.idClient,
      name: data.name.present ? data.name.value : this.name,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      identificationTypeId: data.identificationTypeId.present
          ? data.identificationTypeId.value
          : this.identificationTypeId,
      identification: data.identification.present
          ? data.identification.value
          : this.identification,
      birthDay: data.birthDay.present ? data.birthDay.value : this.birthDay,
      genderId: data.genderId.present ? data.genderId.value : this.genderId,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientesTableData(')
          ..write('idClient: $idClient, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('identificationTypeId: $identificationTypeId, ')
          ..write('identification: $identification, ')
          ..write('birthDay: $birthDay, ')
          ..write('genderId: $genderId, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    idClient,
    name,
    lastName,
    identificationTypeId,
    identification,
    birthDay,
    genderId,
    phone,
    email,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientesTableData &&
          other.idClient == this.idClient &&
          other.name == this.name &&
          other.lastName == this.lastName &&
          other.identificationTypeId == this.identificationTypeId &&
          other.identification == this.identification &&
          other.birthDay == this.birthDay &&
          other.genderId == this.genderId &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class ClientesTableCompanion extends UpdateCompanion<ClientesTableData> {
  final Value<String> idClient;
  final Value<String> name;
  final Value<String> lastName;
  final Value<String?> identificationTypeId;
  final Value<String> identification;
  final Value<DateTime> birthDay;
  final Value<String> genderId;
  final Value<String> phone;
  final Value<String> email;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const ClientesTableCompanion({
    this.idClient = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.identificationTypeId = const Value.absent(),
    this.identification = const Value.absent(),
    this.birthDay = const Value.absent(),
    this.genderId = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientesTableCompanion.insert({
    required String idClient,
    required String name,
    required String lastName,
    this.identificationTypeId = const Value.absent(),
    required String identification,
    required DateTime birthDay,
    required String genderId,
    required String phone,
    required String email,
    required String companyId,
    this.isActive = const Value.absent(),
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : idClient = Value(idClient),
       name = Value(name),
       lastName = Value(lastName),
       identification = Value(identification),
       birthDay = Value(birthDay),
       genderId = Value(genderId),
       phone = Value(phone),
       email = Value(email),
       companyId = Value(companyId),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<ClientesTableData> custom({
    Expression<String>? idClient,
    Expression<String>? name,
    Expression<String>? lastName,
    Expression<String>? identificationTypeId,
    Expression<String>? identification,
    Expression<DateTime>? birthDay,
    Expression<String>? genderId,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idClient != null) 'id_client': idClient,
      if (name != null) 'name': name,
      if (lastName != null) 'last_name': lastName,
      if (identificationTypeId != null)
        'identification_type_id': identificationTypeId,
      if (identification != null) 'identification': identification,
      if (birthDay != null) 'birth_day': birthDay,
      if (genderId != null) 'gender_id': genderId,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientesTableCompanion copyWith({
    Value<String>? idClient,
    Value<String>? name,
    Value<String>? lastName,
    Value<String?>? identificationTypeId,
    Value<String>? identification,
    Value<DateTime>? birthDay,
    Value<String>? genderId,
    Value<String>? phone,
    Value<String>? email,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return ClientesTableCompanion(
      idClient: idClient ?? this.idClient,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      identificationTypeId: identificationTypeId ?? this.identificationTypeId,
      identification: identification ?? this.identification,
      birthDay: birthDay ?? this.birthDay,
      genderId: genderId ?? this.genderId,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idClient.present) {
      map['id_client'] = Variable<String>(idClient.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (identificationTypeId.present) {
      map['identification_type_id'] = Variable<String>(
        identificationTypeId.value,
      );
    }
    if (identification.present) {
      map['identification'] = Variable<String>(identification.value);
    }
    if (birthDay.present) {
      map['birth_day'] = Variable<DateTime>(birthDay.value);
    }
    if (genderId.present) {
      map['gender_id'] = Variable<String>(genderId.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesTableCompanion(')
          ..write('idClient: $idClient, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('identificationTypeId: $identificationTypeId, ')
          ..write('identification: $identification, ')
          ..write('birthDay: $birthDay, ')
          ..write('genderId: $genderId, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClientContactTableTable extends ClientContactTable
    with TableInfo<$ClientContactTableTable, ClientContactTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientContactTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientContactIdMeta = const VerificationMeta(
    'clientContactId',
  );
  @override
  late final GeneratedColumn<String> clientContactId = GeneratedColumn<String>(
    'client_contact_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneNumberMeta = const VerificationMeta(
    'phoneNumber',
  );
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _extensionMeta = const VerificationMeta(
    'extension',
  );
  @override
  late final GeneratedColumn<String> extension = GeneratedColumn<String>(
    'extension',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<int> createdDate = GeneratedColumn<int>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientContactId,
    clientId,
    description,
    phoneNumber,
    extension,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_contact_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClientContactTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_contact_id')) {
      context.handle(
        _clientContactIdMeta,
        clientContactId.isAcceptableOrUnknown(
          data['client_contact_id']!,
          _clientContactIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientContactIdMeta);
    }
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
        _phoneNumberMeta,
        phoneNumber.isAcceptableOrUnknown(
          data['phone_number']!,
          _phoneNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('extension')) {
      context.handle(
        _extensionMeta,
        extension.isAcceptableOrUnknown(data['extension']!, _extensionMeta),
      );
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientContactId};
  @override
  ClientContactTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientContactTableData(
      clientContactId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_contact_id'],
      )!,
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      )!,
      extension: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}extension'],
      ),
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $ClientContactTableTable createAlias(String alias) {
    return $ClientContactTableTable(attachedDatabase, alias);
  }
}

class ClientContactTableData extends DataClass
    implements Insertable<ClientContactTableData> {
  final String clientContactId;
  final String clientId;
  final String description;
  final String phoneNumber;
  final String? extension;
  final String companyId;
  final bool isActive;
  final int createdDate;
  final String userId;
  const ClientContactTableData({
    required this.clientContactId,
    required this.clientId,
    required this.description,
    required this.phoneNumber,
    this.extension,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_contact_id'] = Variable<String>(clientContactId);
    map['client_id'] = Variable<String>(clientId);
    map['description'] = Variable<String>(description);
    map['phone_number'] = Variable<String>(phoneNumber);
    if (!nullToAbsent || extension != null) {
      map['extension'] = Variable<String>(extension);
    }
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<int>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  ClientContactTableCompanion toCompanion(bool nullToAbsent) {
    return ClientContactTableCompanion(
      clientContactId: Value(clientContactId),
      clientId: Value(clientId),
      description: Value(description),
      phoneNumber: Value(phoneNumber),
      extension: extension == null && nullToAbsent
          ? const Value.absent()
          : Value(extension),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory ClientContactTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientContactTableData(
      clientContactId: serializer.fromJson<String>(json['clientContactId']),
      clientId: serializer.fromJson<String>(json['clientId']),
      description: serializer.fromJson<String>(json['description']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      extension: serializer.fromJson<String?>(json['extension']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<int>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientContactId': serializer.toJson<String>(clientContactId),
      'clientId': serializer.toJson<String>(clientId),
      'description': serializer.toJson<String>(description),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'extension': serializer.toJson<String?>(extension),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<int>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  ClientContactTableData copyWith({
    String? clientContactId,
    String? clientId,
    String? description,
    String? phoneNumber,
    Value<String?> extension = const Value.absent(),
    String? companyId,
    bool? isActive,
    int? createdDate,
    String? userId,
  }) => ClientContactTableData(
    clientContactId: clientContactId ?? this.clientContactId,
    clientId: clientId ?? this.clientId,
    description: description ?? this.description,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extension: extension.present ? extension.value : this.extension,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  ClientContactTableData copyWithCompanion(ClientContactTableCompanion data) {
    return ClientContactTableData(
      clientContactId: data.clientContactId.present
          ? data.clientContactId.value
          : this.clientContactId,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      description: data.description.present
          ? data.description.value
          : this.description,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      extension: data.extension.present ? data.extension.value : this.extension,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientContactTableData(')
          ..write('clientContactId: $clientContactId, ')
          ..write('clientId: $clientId, ')
          ..write('description: $description, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('extension: $extension, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientContactId,
    clientId,
    description,
    phoneNumber,
    extension,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientContactTableData &&
          other.clientContactId == this.clientContactId &&
          other.clientId == this.clientId &&
          other.description == this.description &&
          other.phoneNumber == this.phoneNumber &&
          other.extension == this.extension &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class ClientContactTableCompanion
    extends UpdateCompanion<ClientContactTableData> {
  final Value<String> clientContactId;
  final Value<String> clientId;
  final Value<String> description;
  final Value<String> phoneNumber;
  final Value<String?> extension;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<int> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const ClientContactTableCompanion({
    this.clientContactId = const Value.absent(),
    this.clientId = const Value.absent(),
    this.description = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.extension = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientContactTableCompanion.insert({
    required String clientContactId,
    required String clientId,
    required String description,
    required String phoneNumber,
    this.extension = const Value.absent(),
    required String companyId,
    required bool isActive,
    required int createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : clientContactId = Value(clientContactId),
       clientId = Value(clientId),
       description = Value(description),
       phoneNumber = Value(phoneNumber),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<ClientContactTableData> custom({
    Expression<String>? clientContactId,
    Expression<String>? clientId,
    Expression<String>? description,
    Expression<String>? phoneNumber,
    Expression<String>? extension,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<int>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientContactId != null) 'client_contact_id': clientContactId,
      if (clientId != null) 'client_id': clientId,
      if (description != null) 'description': description,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (extension != null) 'extension': extension,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientContactTableCompanion copyWith({
    Value<String>? clientContactId,
    Value<String>? clientId,
    Value<String>? description,
    Value<String>? phoneNumber,
    Value<String?>? extension,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<int>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return ClientContactTableCompanion(
      clientContactId: clientContactId ?? this.clientContactId,
      clientId: clientId ?? this.clientId,
      description: description ?? this.description,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      extension: extension ?? this.extension,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientContactId.present) {
      map['client_contact_id'] = Variable<String>(clientContactId.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (extension.present) {
      map['extension'] = Variable<String>(extension.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<int>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientContactTableCompanion(')
          ..write('clientContactId: $clientContactId, ')
          ..write('clientId: $clientId, ')
          ..write('description: $description, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('extension: $extension, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClientJobTableTable extends ClientJobTable
    with TableInfo<$ClientJobTableTable, ClientJobTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientJobTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientJobIdMeta = const VerificationMeta(
    'clientJobId',
  );
  @override
  late final GeneratedColumn<String> clientJobId = GeneratedColumn<String>(
    'client_job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyNameMeta = const VerificationMeta(
    'companyName',
  );
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
    'company_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 200),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _positionMeta = const VerificationMeta(
    'position',
  );
  @override
  late final GeneratedColumn<String> position = GeneratedColumn<String>(
    'position',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 200),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currentJobMeta = const VerificationMeta(
    'currentJob',
  );
  @override
  late final GeneratedColumn<bool> currentJob = GeneratedColumn<bool>(
    'current_job',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("current_job" IN (0, 1))',
    ),
  );
  static const VerificationMeta _salaryMeta = const VerificationMeta('salary');
  @override
  late final GeneratedColumn<double> salary = GeneratedColumn<double>(
    'salary',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _immediateBossMeta = const VerificationMeta(
    'immediateBoss',
  );
  @override
  late final GeneratedColumn<String> immediateBoss = GeneratedColumn<String>(
    'immediate_boss',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _paymentFrequencyMeta = const VerificationMeta(
    'paymentFrequency',
  );
  @override
  late final GeneratedColumn<String> paymentFrequency = GeneratedColumn<String>(
    'payment_frequency',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 15),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _telephoneMeta = const VerificationMeta(
    'telephone',
  );
  @override
  late final GeneratedColumn<String> telephone = GeneratedColumn<String>(
    'telephone',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _extensionMeta = const VerificationMeta(
    'extension',
  );
  @override
  late final GeneratedColumn<int> extension = GeneratedColumn<int>(
    'extension',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientJobId,
    clientId,
    companyName,
    position,
    startDate,
    endDate,
    currentJob,
    salary,
    immediateBoss,
    paymentFrequency,
    telephone,
    extension,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_job_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClientJobTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_job_id')) {
      context.handle(
        _clientJobIdMeta,
        clientJobId.isAcceptableOrUnknown(
          data['client_job_id']!,
          _clientJobIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientJobIdMeta);
    }
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('company_name')) {
      context.handle(
        _companyNameMeta,
        companyName.isAcceptableOrUnknown(
          data['company_name']!,
          _companyNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_companyNameMeta);
    }
    if (data.containsKey('position')) {
      context.handle(
        _positionMeta,
        position.isAcceptableOrUnknown(data['position']!, _positionMeta),
      );
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('current_job')) {
      context.handle(
        _currentJobMeta,
        currentJob.isAcceptableOrUnknown(data['current_job']!, _currentJobMeta),
      );
    }
    if (data.containsKey('salary')) {
      context.handle(
        _salaryMeta,
        salary.isAcceptableOrUnknown(data['salary']!, _salaryMeta),
      );
    } else if (isInserting) {
      context.missing(_salaryMeta);
    }
    if (data.containsKey('immediate_boss')) {
      context.handle(
        _immediateBossMeta,
        immediateBoss.isAcceptableOrUnknown(
          data['immediate_boss']!,
          _immediateBossMeta,
        ),
      );
    }
    if (data.containsKey('payment_frequency')) {
      context.handle(
        _paymentFrequencyMeta,
        paymentFrequency.isAcceptableOrUnknown(
          data['payment_frequency']!,
          _paymentFrequencyMeta,
        ),
      );
    }
    if (data.containsKey('telephone')) {
      context.handle(
        _telephoneMeta,
        telephone.isAcceptableOrUnknown(data['telephone']!, _telephoneMeta),
      );
    }
    if (data.containsKey('extension')) {
      context.handle(
        _extensionMeta,
        extension.isAcceptableOrUnknown(data['extension']!, _extensionMeta),
      );
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientJobId};
  @override
  ClientJobTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientJobTableData(
      clientJobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_job_id'],
      )!,
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      companyName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_name'],
      )!,
      position: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}position'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      currentJob: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}current_job'],
      ),
      salary: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}salary'],
      )!,
      immediateBoss: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}immediate_boss'],
      ),
      paymentFrequency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_frequency'],
      ),
      telephone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telephone'],
      ),
      extension: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}extension'],
      ),
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $ClientJobTableTable createAlias(String alias) {
    return $ClientJobTableTable(attachedDatabase, alias);
  }
}

class ClientJobTableData extends DataClass
    implements Insertable<ClientJobTableData> {
  final String clientJobId;
  final String clientId;
  final String companyName;
  final String position;
  final DateTime startDate;
  final DateTime? endDate;
  final bool? currentJob;
  final double salary;
  final String? immediateBoss;
  final String? paymentFrequency;
  final String? telephone;
  final int? extension;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const ClientJobTableData({
    required this.clientJobId,
    required this.clientId,
    required this.companyName,
    required this.position,
    required this.startDate,
    this.endDate,
    this.currentJob,
    required this.salary,
    this.immediateBoss,
    this.paymentFrequency,
    this.telephone,
    this.extension,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_job_id'] = Variable<String>(clientJobId);
    map['client_id'] = Variable<String>(clientId);
    map['company_name'] = Variable<String>(companyName);
    map['position'] = Variable<String>(position);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || currentJob != null) {
      map['current_job'] = Variable<bool>(currentJob);
    }
    map['salary'] = Variable<double>(salary);
    if (!nullToAbsent || immediateBoss != null) {
      map['immediate_boss'] = Variable<String>(immediateBoss);
    }
    if (!nullToAbsent || paymentFrequency != null) {
      map['payment_frequency'] = Variable<String>(paymentFrequency);
    }
    if (!nullToAbsent || telephone != null) {
      map['telephone'] = Variable<String>(telephone);
    }
    if (!nullToAbsent || extension != null) {
      map['extension'] = Variable<int>(extension);
    }
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  ClientJobTableCompanion toCompanion(bool nullToAbsent) {
    return ClientJobTableCompanion(
      clientJobId: Value(clientJobId),
      clientId: Value(clientId),
      companyName: Value(companyName),
      position: Value(position),
      startDate: Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      currentJob: currentJob == null && nullToAbsent
          ? const Value.absent()
          : Value(currentJob),
      salary: Value(salary),
      immediateBoss: immediateBoss == null && nullToAbsent
          ? const Value.absent()
          : Value(immediateBoss),
      paymentFrequency: paymentFrequency == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentFrequency),
      telephone: telephone == null && nullToAbsent
          ? const Value.absent()
          : Value(telephone),
      extension: extension == null && nullToAbsent
          ? const Value.absent()
          : Value(extension),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory ClientJobTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientJobTableData(
      clientJobId: serializer.fromJson<String>(json['clientJobId']),
      clientId: serializer.fromJson<String>(json['clientId']),
      companyName: serializer.fromJson<String>(json['companyName']),
      position: serializer.fromJson<String>(json['position']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      currentJob: serializer.fromJson<bool?>(json['currentJob']),
      salary: serializer.fromJson<double>(json['salary']),
      immediateBoss: serializer.fromJson<String?>(json['immediateBoss']),
      paymentFrequency: serializer.fromJson<String?>(json['paymentFrequency']),
      telephone: serializer.fromJson<String?>(json['telephone']),
      extension: serializer.fromJson<int?>(json['extension']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientJobId': serializer.toJson<String>(clientJobId),
      'clientId': serializer.toJson<String>(clientId),
      'companyName': serializer.toJson<String>(companyName),
      'position': serializer.toJson<String>(position),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'currentJob': serializer.toJson<bool?>(currentJob),
      'salary': serializer.toJson<double>(salary),
      'immediateBoss': serializer.toJson<String?>(immediateBoss),
      'paymentFrequency': serializer.toJson<String?>(paymentFrequency),
      'telephone': serializer.toJson<String?>(telephone),
      'extension': serializer.toJson<int?>(extension),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  ClientJobTableData copyWith({
    String? clientJobId,
    String? clientId,
    String? companyName,
    String? position,
    DateTime? startDate,
    Value<DateTime?> endDate = const Value.absent(),
    Value<bool?> currentJob = const Value.absent(),
    double? salary,
    Value<String?> immediateBoss = const Value.absent(),
    Value<String?> paymentFrequency = const Value.absent(),
    Value<String?> telephone = const Value.absent(),
    Value<int?> extension = const Value.absent(),
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => ClientJobTableData(
    clientJobId: clientJobId ?? this.clientJobId,
    clientId: clientId ?? this.clientId,
    companyName: companyName ?? this.companyName,
    position: position ?? this.position,
    startDate: startDate ?? this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    currentJob: currentJob.present ? currentJob.value : this.currentJob,
    salary: salary ?? this.salary,
    immediateBoss: immediateBoss.present
        ? immediateBoss.value
        : this.immediateBoss,
    paymentFrequency: paymentFrequency.present
        ? paymentFrequency.value
        : this.paymentFrequency,
    telephone: telephone.present ? telephone.value : this.telephone,
    extension: extension.present ? extension.value : this.extension,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  ClientJobTableData copyWithCompanion(ClientJobTableCompanion data) {
    return ClientJobTableData(
      clientJobId: data.clientJobId.present
          ? data.clientJobId.value
          : this.clientJobId,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      companyName: data.companyName.present
          ? data.companyName.value
          : this.companyName,
      position: data.position.present ? data.position.value : this.position,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      currentJob: data.currentJob.present
          ? data.currentJob.value
          : this.currentJob,
      salary: data.salary.present ? data.salary.value : this.salary,
      immediateBoss: data.immediateBoss.present
          ? data.immediateBoss.value
          : this.immediateBoss,
      paymentFrequency: data.paymentFrequency.present
          ? data.paymentFrequency.value
          : this.paymentFrequency,
      telephone: data.telephone.present ? data.telephone.value : this.telephone,
      extension: data.extension.present ? data.extension.value : this.extension,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientJobTableData(')
          ..write('clientJobId: $clientJobId, ')
          ..write('clientId: $clientId, ')
          ..write('companyName: $companyName, ')
          ..write('position: $position, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('currentJob: $currentJob, ')
          ..write('salary: $salary, ')
          ..write('immediateBoss: $immediateBoss, ')
          ..write('paymentFrequency: $paymentFrequency, ')
          ..write('telephone: $telephone, ')
          ..write('extension: $extension, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientJobId,
    clientId,
    companyName,
    position,
    startDate,
    endDate,
    currentJob,
    salary,
    immediateBoss,
    paymentFrequency,
    telephone,
    extension,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientJobTableData &&
          other.clientJobId == this.clientJobId &&
          other.clientId == this.clientId &&
          other.companyName == this.companyName &&
          other.position == this.position &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.currentJob == this.currentJob &&
          other.salary == this.salary &&
          other.immediateBoss == this.immediateBoss &&
          other.paymentFrequency == this.paymentFrequency &&
          other.telephone == this.telephone &&
          other.extension == this.extension &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class ClientJobTableCompanion extends UpdateCompanion<ClientJobTableData> {
  final Value<String> clientJobId;
  final Value<String> clientId;
  final Value<String> companyName;
  final Value<String> position;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<bool?> currentJob;
  final Value<double> salary;
  final Value<String?> immediateBoss;
  final Value<String?> paymentFrequency;
  final Value<String?> telephone;
  final Value<int?> extension;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const ClientJobTableCompanion({
    this.clientJobId = const Value.absent(),
    this.clientId = const Value.absent(),
    this.companyName = const Value.absent(),
    this.position = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.currentJob = const Value.absent(),
    this.salary = const Value.absent(),
    this.immediateBoss = const Value.absent(),
    this.paymentFrequency = const Value.absent(),
    this.telephone = const Value.absent(),
    this.extension = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientJobTableCompanion.insert({
    required String clientJobId,
    required String clientId,
    required String companyName,
    required String position,
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.currentJob = const Value.absent(),
    required double salary,
    this.immediateBoss = const Value.absent(),
    this.paymentFrequency = const Value.absent(),
    this.telephone = const Value.absent(),
    this.extension = const Value.absent(),
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : clientJobId = Value(clientJobId),
       clientId = Value(clientId),
       companyName = Value(companyName),
       position = Value(position),
       startDate = Value(startDate),
       salary = Value(salary),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<ClientJobTableData> custom({
    Expression<String>? clientJobId,
    Expression<String>? clientId,
    Expression<String>? companyName,
    Expression<String>? position,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<bool>? currentJob,
    Expression<double>? salary,
    Expression<String>? immediateBoss,
    Expression<String>? paymentFrequency,
    Expression<String>? telephone,
    Expression<int>? extension,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientJobId != null) 'client_job_id': clientJobId,
      if (clientId != null) 'client_id': clientId,
      if (companyName != null) 'company_name': companyName,
      if (position != null) 'position': position,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (currentJob != null) 'current_job': currentJob,
      if (salary != null) 'salary': salary,
      if (immediateBoss != null) 'immediate_boss': immediateBoss,
      if (paymentFrequency != null) 'payment_frequency': paymentFrequency,
      if (telephone != null) 'telephone': telephone,
      if (extension != null) 'extension': extension,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientJobTableCompanion copyWith({
    Value<String>? clientJobId,
    Value<String>? clientId,
    Value<String>? companyName,
    Value<String>? position,
    Value<DateTime>? startDate,
    Value<DateTime?>? endDate,
    Value<bool?>? currentJob,
    Value<double>? salary,
    Value<String?>? immediateBoss,
    Value<String?>? paymentFrequency,
    Value<String?>? telephone,
    Value<int?>? extension,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return ClientJobTableCompanion(
      clientJobId: clientJobId ?? this.clientJobId,
      clientId: clientId ?? this.clientId,
      companyName: companyName ?? this.companyName,
      position: position ?? this.position,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      currentJob: currentJob ?? this.currentJob,
      salary: salary ?? this.salary,
      immediateBoss: immediateBoss ?? this.immediateBoss,
      paymentFrequency: paymentFrequency ?? this.paymentFrequency,
      telephone: telephone ?? this.telephone,
      extension: extension ?? this.extension,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientJobId.present) {
      map['client_job_id'] = Variable<String>(clientJobId.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (position.present) {
      map['position'] = Variable<String>(position.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (currentJob.present) {
      map['current_job'] = Variable<bool>(currentJob.value);
    }
    if (salary.present) {
      map['salary'] = Variable<double>(salary.value);
    }
    if (immediateBoss.present) {
      map['immediate_boss'] = Variable<String>(immediateBoss.value);
    }
    if (paymentFrequency.present) {
      map['payment_frequency'] = Variable<String>(paymentFrequency.value);
    }
    if (telephone.present) {
      map['telephone'] = Variable<String>(telephone.value);
    }
    if (extension.present) {
      map['extension'] = Variable<int>(extension.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientJobTableCompanion(')
          ..write('clientJobId: $clientJobId, ')
          ..write('clientId: $clientId, ')
          ..write('companyName: $companyName, ')
          ..write('position: $position, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('currentJob: $currentJob, ')
          ..write('salary: $salary, ')
          ..write('immediateBoss: $immediateBoss, ')
          ..write('paymentFrequency: $paymentFrequency, ')
          ..write('telephone: $telephone, ')
          ..write('extension: $extension, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AddressTableTable extends AddressTable
    with TableInfo<$AddressTableTable, AddressTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idAddressMeta = const VerificationMeta(
    'idAddress',
  );
  @override
  late final GeneratedColumn<String> idAddress = GeneratedColumn<String>(
    'id_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressNameMeta = const VerificationMeta(
    'addressName',
  );
  @override
  late final GeneratedColumn<String> addressName = GeneratedColumn<String>(
    'address_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idProvinceMeta = const VerificationMeta(
    'idProvince',
  );
  @override
  late final GeneratedColumn<String> idProvince = GeneratedColumn<String>(
    'id_province',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _neighborhoodMeta = const VerificationMeta(
    'neighborhood',
  );
  @override
  late final GeneratedColumn<String> neighborhood = GeneratedColumn<String>(
    'neighborhood',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
    'street',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _buildingMeta = const VerificationMeta(
    'building',
  );
  @override
  late final GeneratedColumn<String> building = GeneratedColumn<String>(
    'building',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _apartmentMeta = const VerificationMeta(
    'apartment',
  );
  @override
  late final GeneratedColumn<String> apartment = GeneratedColumn<String>(
    'apartment',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _floorMeta = const VerificationMeta('floor');
  @override
  late final GeneratedColumn<int> floor = GeneratedColumn<int>(
    'floor',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<String> longitude = GeneratedColumn<String>(
    'longitude',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
    'latitude',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idAddress,
    addressName,
    idProvince,
    neighborhood,
    street,
    number,
    building,
    apartment,
    floor,
    longitude,
    latitude,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AddressTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_address')) {
      context.handle(
        _idAddressMeta,
        idAddress.isAcceptableOrUnknown(data['id_address']!, _idAddressMeta),
      );
    } else if (isInserting) {
      context.missing(_idAddressMeta);
    }
    if (data.containsKey('address_name')) {
      context.handle(
        _addressNameMeta,
        addressName.isAcceptableOrUnknown(
          data['address_name']!,
          _addressNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_addressNameMeta);
    }
    if (data.containsKey('id_province')) {
      context.handle(
        _idProvinceMeta,
        idProvince.isAcceptableOrUnknown(data['id_province']!, _idProvinceMeta),
      );
    }
    if (data.containsKey('neighborhood')) {
      context.handle(
        _neighborhoodMeta,
        neighborhood.isAcceptableOrUnknown(
          data['neighborhood']!,
          _neighborhoodMeta,
        ),
      );
    }
    if (data.containsKey('street')) {
      context.handle(
        _streetMeta,
        street.isAcceptableOrUnknown(data['street']!, _streetMeta),
      );
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    }
    if (data.containsKey('building')) {
      context.handle(
        _buildingMeta,
        building.isAcceptableOrUnknown(data['building']!, _buildingMeta),
      );
    }
    if (data.containsKey('apartment')) {
      context.handle(
        _apartmentMeta,
        apartment.isAcceptableOrUnknown(data['apartment']!, _apartmentMeta),
      );
    }
    if (data.containsKey('floor')) {
      context.handle(
        _floorMeta,
        floor.isAcceptableOrUnknown(data['floor']!, _floorMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idAddress};
  @override
  AddressTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressTableData(
      idAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_address'],
      )!,
      addressName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_name'],
      )!,
      idProvince: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_province'],
      ),
      neighborhood: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}neighborhood'],
      ),
      street: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}street'],
      ),
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      ),
      building: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}building'],
      ),
      apartment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}apartment'],
      ),
      floor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}floor'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}longitude'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}latitude'],
      ),
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $AddressTableTable createAlias(String alias) {
    return $AddressTableTable(attachedDatabase, alias);
  }
}

class AddressTableData extends DataClass
    implements Insertable<AddressTableData> {
  final String idAddress;
  final String addressName;
  final String? idProvince;
  final String? neighborhood;
  final String? street;
  final int? number;
  final String? building;
  final String? apartment;
  final int? floor;
  final String? longitude;
  final String? latitude;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const AddressTableData({
    required this.idAddress,
    required this.addressName,
    this.idProvince,
    this.neighborhood,
    this.street,
    this.number,
    this.building,
    this.apartment,
    this.floor,
    this.longitude,
    this.latitude,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_address'] = Variable<String>(idAddress);
    map['address_name'] = Variable<String>(addressName);
    if (!nullToAbsent || idProvince != null) {
      map['id_province'] = Variable<String>(idProvince);
    }
    if (!nullToAbsent || neighborhood != null) {
      map['neighborhood'] = Variable<String>(neighborhood);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String>(street);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<int>(number);
    }
    if (!nullToAbsent || building != null) {
      map['building'] = Variable<String>(building);
    }
    if (!nullToAbsent || apartment != null) {
      map['apartment'] = Variable<String>(apartment);
    }
    if (!nullToAbsent || floor != null) {
      map['floor'] = Variable<int>(floor);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<String>(longitude);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<String>(latitude);
    }
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  AddressTableCompanion toCompanion(bool nullToAbsent) {
    return AddressTableCompanion(
      idAddress: Value(idAddress),
      addressName: Value(addressName),
      idProvince: idProvince == null && nullToAbsent
          ? const Value.absent()
          : Value(idProvince),
      neighborhood: neighborhood == null && nullToAbsent
          ? const Value.absent()
          : Value(neighborhood),
      street: street == null && nullToAbsent
          ? const Value.absent()
          : Value(street),
      number: number == null && nullToAbsent
          ? const Value.absent()
          : Value(number),
      building: building == null && nullToAbsent
          ? const Value.absent()
          : Value(building),
      apartment: apartment == null && nullToAbsent
          ? const Value.absent()
          : Value(apartment),
      floor: floor == null && nullToAbsent
          ? const Value.absent()
          : Value(floor),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory AddressTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressTableData(
      idAddress: serializer.fromJson<String>(json['idAddress']),
      addressName: serializer.fromJson<String>(json['addressName']),
      idProvince: serializer.fromJson<String?>(json['idProvince']),
      neighborhood: serializer.fromJson<String?>(json['neighborhood']),
      street: serializer.fromJson<String?>(json['street']),
      number: serializer.fromJson<int?>(json['number']),
      building: serializer.fromJson<String?>(json['building']),
      apartment: serializer.fromJson<String?>(json['apartment']),
      floor: serializer.fromJson<int?>(json['floor']),
      longitude: serializer.fromJson<String?>(json['longitude']),
      latitude: serializer.fromJson<String?>(json['latitude']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idAddress': serializer.toJson<String>(idAddress),
      'addressName': serializer.toJson<String>(addressName),
      'idProvince': serializer.toJson<String?>(idProvince),
      'neighborhood': serializer.toJson<String?>(neighborhood),
      'street': serializer.toJson<String?>(street),
      'number': serializer.toJson<int?>(number),
      'building': serializer.toJson<String?>(building),
      'apartment': serializer.toJson<String?>(apartment),
      'floor': serializer.toJson<int?>(floor),
      'longitude': serializer.toJson<String?>(longitude),
      'latitude': serializer.toJson<String?>(latitude),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  AddressTableData copyWith({
    String? idAddress,
    String? addressName,
    Value<String?> idProvince = const Value.absent(),
    Value<String?> neighborhood = const Value.absent(),
    Value<String?> street = const Value.absent(),
    Value<int?> number = const Value.absent(),
    Value<String?> building = const Value.absent(),
    Value<String?> apartment = const Value.absent(),
    Value<int?> floor = const Value.absent(),
    Value<String?> longitude = const Value.absent(),
    Value<String?> latitude = const Value.absent(),
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => AddressTableData(
    idAddress: idAddress ?? this.idAddress,
    addressName: addressName ?? this.addressName,
    idProvince: idProvince.present ? idProvince.value : this.idProvince,
    neighborhood: neighborhood.present ? neighborhood.value : this.neighborhood,
    street: street.present ? street.value : this.street,
    number: number.present ? number.value : this.number,
    building: building.present ? building.value : this.building,
    apartment: apartment.present ? apartment.value : this.apartment,
    floor: floor.present ? floor.value : this.floor,
    longitude: longitude.present ? longitude.value : this.longitude,
    latitude: latitude.present ? latitude.value : this.latitude,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  AddressTableData copyWithCompanion(AddressTableCompanion data) {
    return AddressTableData(
      idAddress: data.idAddress.present ? data.idAddress.value : this.idAddress,
      addressName: data.addressName.present
          ? data.addressName.value
          : this.addressName,
      idProvince: data.idProvince.present
          ? data.idProvince.value
          : this.idProvince,
      neighborhood: data.neighborhood.present
          ? data.neighborhood.value
          : this.neighborhood,
      street: data.street.present ? data.street.value : this.street,
      number: data.number.present ? data.number.value : this.number,
      building: data.building.present ? data.building.value : this.building,
      apartment: data.apartment.present ? data.apartment.value : this.apartment,
      floor: data.floor.present ? data.floor.value : this.floor,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressTableData(')
          ..write('idAddress: $idAddress, ')
          ..write('addressName: $addressName, ')
          ..write('idProvince: $idProvince, ')
          ..write('neighborhood: $neighborhood, ')
          ..write('street: $street, ')
          ..write('number: $number, ')
          ..write('building: $building, ')
          ..write('apartment: $apartment, ')
          ..write('floor: $floor, ')
          ..write('longitude: $longitude, ')
          ..write('latitude: $latitude, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    idAddress,
    addressName,
    idProvince,
    neighborhood,
    street,
    number,
    building,
    apartment,
    floor,
    longitude,
    latitude,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressTableData &&
          other.idAddress == this.idAddress &&
          other.addressName == this.addressName &&
          other.idProvince == this.idProvince &&
          other.neighborhood == this.neighborhood &&
          other.street == this.street &&
          other.number == this.number &&
          other.building == this.building &&
          other.apartment == this.apartment &&
          other.floor == this.floor &&
          other.longitude == this.longitude &&
          other.latitude == this.latitude &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class AddressTableCompanion extends UpdateCompanion<AddressTableData> {
  final Value<String> idAddress;
  final Value<String> addressName;
  final Value<String?> idProvince;
  final Value<String?> neighborhood;
  final Value<String?> street;
  final Value<int?> number;
  final Value<String?> building;
  final Value<String?> apartment;
  final Value<int?> floor;
  final Value<String?> longitude;
  final Value<String?> latitude;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const AddressTableCompanion({
    this.idAddress = const Value.absent(),
    this.addressName = const Value.absent(),
    this.idProvince = const Value.absent(),
    this.neighborhood = const Value.absent(),
    this.street = const Value.absent(),
    this.number = const Value.absent(),
    this.building = const Value.absent(),
    this.apartment = const Value.absent(),
    this.floor = const Value.absent(),
    this.longitude = const Value.absent(),
    this.latitude = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AddressTableCompanion.insert({
    required String idAddress,
    required String addressName,
    this.idProvince = const Value.absent(),
    this.neighborhood = const Value.absent(),
    this.street = const Value.absent(),
    this.number = const Value.absent(),
    this.building = const Value.absent(),
    this.apartment = const Value.absent(),
    this.floor = const Value.absent(),
    this.longitude = const Value.absent(),
    this.latitude = const Value.absent(),
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : idAddress = Value(idAddress),
       addressName = Value(addressName),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<AddressTableData> custom({
    Expression<String>? idAddress,
    Expression<String>? addressName,
    Expression<String>? idProvince,
    Expression<String>? neighborhood,
    Expression<String>? street,
    Expression<int>? number,
    Expression<String>? building,
    Expression<String>? apartment,
    Expression<int>? floor,
    Expression<String>? longitude,
    Expression<String>? latitude,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idAddress != null) 'id_address': idAddress,
      if (addressName != null) 'address_name': addressName,
      if (idProvince != null) 'id_province': idProvince,
      if (neighborhood != null) 'neighborhood': neighborhood,
      if (street != null) 'street': street,
      if (number != null) 'number': number,
      if (building != null) 'building': building,
      if (apartment != null) 'apartment': apartment,
      if (floor != null) 'floor': floor,
      if (longitude != null) 'longitude': longitude,
      if (latitude != null) 'latitude': latitude,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AddressTableCompanion copyWith({
    Value<String>? idAddress,
    Value<String>? addressName,
    Value<String?>? idProvince,
    Value<String?>? neighborhood,
    Value<String?>? street,
    Value<int?>? number,
    Value<String?>? building,
    Value<String?>? apartment,
    Value<int?>? floor,
    Value<String?>? longitude,
    Value<String?>? latitude,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return AddressTableCompanion(
      idAddress: idAddress ?? this.idAddress,
      addressName: addressName ?? this.addressName,
      idProvince: idProvince ?? this.idProvince,
      neighborhood: neighborhood ?? this.neighborhood,
      street: street ?? this.street,
      number: number ?? this.number,
      building: building ?? this.building,
      apartment: apartment ?? this.apartment,
      floor: floor ?? this.floor,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idAddress.present) {
      map['id_address'] = Variable<String>(idAddress.value);
    }
    if (addressName.present) {
      map['address_name'] = Variable<String>(addressName.value);
    }
    if (idProvince.present) {
      map['id_province'] = Variable<String>(idProvince.value);
    }
    if (neighborhood.present) {
      map['neighborhood'] = Variable<String>(neighborhood.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (building.present) {
      map['building'] = Variable<String>(building.value);
    }
    if (apartment.present) {
      map['apartment'] = Variable<String>(apartment.value);
    }
    if (floor.present) {
      map['floor'] = Variable<int>(floor.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressTableCompanion(')
          ..write('idAddress: $idAddress, ')
          ..write('addressName: $addressName, ')
          ..write('idProvince: $idProvince, ')
          ..write('neighborhood: $neighborhood, ')
          ..write('street: $street, ')
          ..write('number: $number, ')
          ..write('building: $building, ')
          ..write('apartment: $apartment, ')
          ..write('floor: $floor, ')
          ..write('longitude: $longitude, ')
          ..write('latitude: $latitude, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClientAddressTableTable extends ClientAddressTable
    with TableInfo<$ClientAddressTableTable, ClientAddressTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientAddressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressIdMeta = const VerificationMeta(
    'addressId',
  );
  @override
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
    'address_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [clientId, addressId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_address_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClientAddressTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('address_id')) {
      context.handle(
        _addressIdMeta,
        addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta),
      );
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ClientAddressTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientAddressTableData(
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      addressId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_id'],
      )!,
    );
  }

  @override
  $ClientAddressTableTable createAlias(String alias) {
    return $ClientAddressTableTable(attachedDatabase, alias);
  }
}

class ClientAddressTableData extends DataClass
    implements Insertable<ClientAddressTableData> {
  final String clientId;
  final String addressId;
  const ClientAddressTableData({
    required this.clientId,
    required this.addressId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_id'] = Variable<String>(clientId);
    map['address_id'] = Variable<String>(addressId);
    return map;
  }

  ClientAddressTableCompanion toCompanion(bool nullToAbsent) {
    return ClientAddressTableCompanion(
      clientId: Value(clientId),
      addressId: Value(addressId),
    );
  }

  factory ClientAddressTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientAddressTableData(
      clientId: serializer.fromJson<String>(json['clientId']),
      addressId: serializer.fromJson<String>(json['addressId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientId': serializer.toJson<String>(clientId),
      'addressId': serializer.toJson<String>(addressId),
    };
  }

  ClientAddressTableData copyWith({String? clientId, String? addressId}) =>
      ClientAddressTableData(
        clientId: clientId ?? this.clientId,
        addressId: addressId ?? this.addressId,
      );
  ClientAddressTableData copyWithCompanion(ClientAddressTableCompanion data) {
    return ClientAddressTableData(
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      addressId: data.addressId.present ? data.addressId.value : this.addressId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientAddressTableData(')
          ..write('clientId: $clientId, ')
          ..write('addressId: $addressId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(clientId, addressId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientAddressTableData &&
          other.clientId == this.clientId &&
          other.addressId == this.addressId);
}

class ClientAddressTableCompanion
    extends UpdateCompanion<ClientAddressTableData> {
  final Value<String> clientId;
  final Value<String> addressId;
  final Value<int> rowid;
  const ClientAddressTableCompanion({
    this.clientId = const Value.absent(),
    this.addressId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientAddressTableCompanion.insert({
    required String clientId,
    required String addressId,
    this.rowid = const Value.absent(),
  }) : clientId = Value(clientId),
       addressId = Value(addressId);
  static Insertable<ClientAddressTableData> custom({
    Expression<String>? clientId,
    Expression<String>? addressId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientId != null) 'client_id': clientId,
      if (addressId != null) 'address_id': addressId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientAddressTableCompanion copyWith({
    Value<String>? clientId,
    Value<String>? addressId,
    Value<int>? rowid,
  }) {
    return ClientAddressTableCompanion(
      clientId: clientId ?? this.clientId,
      addressId: addressId ?? this.addressId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (addressId.present) {
      map['address_id'] = Variable<String>(addressId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientAddressTableCompanion(')
          ..write('clientId: $clientId, ')
          ..write('addressId: $addressId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $IdentificationTypeTableTable extends IdentificationTypeTable
    with TableInfo<$IdentificationTypeTableTable, IdentificationTypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IdentificationTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _identificationTypeIdMeta =
      const VerificationMeta('identificationTypeId');
  @override
  late final GeneratedColumn<String> identificationTypeId =
      GeneratedColumn<String>(
        'identification_type_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _identificationTypeNameMeta =
      const VerificationMeta('identificationTypeName');
  @override
  late final GeneratedColumn<String> identificationTypeName =
      GeneratedColumn<String>(
        'identification_type_name',
        aliasedName,
        false,
        additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 15),
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    identificationTypeId,
    identificationTypeName,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'identification_type_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<IdentificationTypeTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('identification_type_id')) {
      context.handle(
        _identificationTypeIdMeta,
        identificationTypeId.isAcceptableOrUnknown(
          data['identification_type_id']!,
          _identificationTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificationTypeIdMeta);
    }
    if (data.containsKey('identification_type_name')) {
      context.handle(
        _identificationTypeNameMeta,
        identificationTypeName.isAcceptableOrUnknown(
          data['identification_type_name']!,
          _identificationTypeNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificationTypeNameMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {identificationTypeId};
  @override
  IdentificationTypeTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IdentificationTypeTableData(
      identificationTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identification_type_id'],
      )!,
      identificationTypeName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identification_type_name'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $IdentificationTypeTableTable createAlias(String alias) {
    return $IdentificationTypeTableTable(attachedDatabase, alias);
  }
}

class IdentificationTypeTableData extends DataClass
    implements Insertable<IdentificationTypeTableData> {
  final String identificationTypeId;
  final String identificationTypeName;
  final bool isActive;
  const IdentificationTypeTableData({
    required this.identificationTypeId,
    required this.identificationTypeName,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['identification_type_id'] = Variable<String>(identificationTypeId);
    map['identification_type_name'] = Variable<String>(identificationTypeName);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  IdentificationTypeTableCompanion toCompanion(bool nullToAbsent) {
    return IdentificationTypeTableCompanion(
      identificationTypeId: Value(identificationTypeId),
      identificationTypeName: Value(identificationTypeName),
      isActive: Value(isActive),
    );
  }

  factory IdentificationTypeTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IdentificationTypeTableData(
      identificationTypeId: serializer.fromJson<String>(
        json['identificationTypeId'],
      ),
      identificationTypeName: serializer.fromJson<String>(
        json['identificationTypeName'],
      ),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'identificationTypeId': serializer.toJson<String>(identificationTypeId),
      'identificationTypeName': serializer.toJson<String>(
        identificationTypeName,
      ),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  IdentificationTypeTableData copyWith({
    String? identificationTypeId,
    String? identificationTypeName,
    bool? isActive,
  }) => IdentificationTypeTableData(
    identificationTypeId: identificationTypeId ?? this.identificationTypeId,
    identificationTypeName:
        identificationTypeName ?? this.identificationTypeName,
    isActive: isActive ?? this.isActive,
  );
  IdentificationTypeTableData copyWithCompanion(
    IdentificationTypeTableCompanion data,
  ) {
    return IdentificationTypeTableData(
      identificationTypeId: data.identificationTypeId.present
          ? data.identificationTypeId.value
          : this.identificationTypeId,
      identificationTypeName: data.identificationTypeName.present
          ? data.identificationTypeName.value
          : this.identificationTypeName,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IdentificationTypeTableData(')
          ..write('identificationTypeId: $identificationTypeId, ')
          ..write('identificationTypeName: $identificationTypeName, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(identificationTypeId, identificationTypeName, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IdentificationTypeTableData &&
          other.identificationTypeId == this.identificationTypeId &&
          other.identificationTypeName == this.identificationTypeName &&
          other.isActive == this.isActive);
}

class IdentificationTypeTableCompanion
    extends UpdateCompanion<IdentificationTypeTableData> {
  final Value<String> identificationTypeId;
  final Value<String> identificationTypeName;
  final Value<bool> isActive;
  final Value<int> rowid;
  const IdentificationTypeTableCompanion({
    this.identificationTypeId = const Value.absent(),
    this.identificationTypeName = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  IdentificationTypeTableCompanion.insert({
    required String identificationTypeId,
    required String identificationTypeName,
    required bool isActive,
    this.rowid = const Value.absent(),
  }) : identificationTypeId = Value(identificationTypeId),
       identificationTypeName = Value(identificationTypeName),
       isActive = Value(isActive);
  static Insertable<IdentificationTypeTableData> custom({
    Expression<String>? identificationTypeId,
    Expression<String>? identificationTypeName,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (identificationTypeId != null)
        'identification_type_id': identificationTypeId,
      if (identificationTypeName != null)
        'identification_type_name': identificationTypeName,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  IdentificationTypeTableCompanion copyWith({
    Value<String>? identificationTypeId,
    Value<String>? identificationTypeName,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return IdentificationTypeTableCompanion(
      identificationTypeId: identificationTypeId ?? this.identificationTypeId,
      identificationTypeName:
          identificationTypeName ?? this.identificationTypeName,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (identificationTypeId.present) {
      map['identification_type_id'] = Variable<String>(
        identificationTypeId.value,
      );
    }
    if (identificationTypeName.present) {
      map['identification_type_name'] = Variable<String>(
        identificationTypeName.value,
      );
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IdentificationTypeTableCompanion(')
          ..write('identificationTypeId: $identificationTypeId, ')
          ..write('identificationTypeName: $identificationTypeName, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanTableTable extends LoanTable
    with TableInfo<$LoanTableTable, LoanTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanNoMeta = const VerificationMeta('loanNo');
  @override
  late final GeneratedColumn<int> loanNo = GeneratedColumn<int>(
    'loan_no',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _idClientMeta = const VerificationMeta(
    'idClient',
  );
  @override
  late final GeneratedColumn<String> idClient = GeneratedColumn<String>(
    'id_client',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanTermIdMeta = const VerificationMeta(
    'loanTermId',
  );
  @override
  late final GeneratedColumn<String> loanTermId = GeneratedColumn<String>(
    'loan_term_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorizeIdMeta = const VerificationMeta(
    'authorizeId',
  );
  @override
  late final GeneratedColumn<String> authorizeId = GeneratedColumn<String>(
    'authorize_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _disbursementIdMeta = const VerificationMeta(
    'disbursementId',
  );
  @override
  late final GeneratedColumn<String> disbursementId = GeneratedColumn<String>(
    'disbursement_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _loanStateIdMeta = const VerificationMeta(
    'loanStateId',
  );
  @override
  late final GeneratedColumn<String> loanStateId = GeneratedColumn<String>(
    'loan_state_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyIdMeta = const VerificationMeta(
    'currencyId',
  );
  @override
  late final GeneratedColumn<String> currencyId = GeneratedColumn<String>(
    'currency_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanTypeIdMeta = const VerificationMeta(
    'loanTypeId',
  );
  @override
  late final GeneratedColumn<String> loanTypeId = GeneratedColumn<String>(
    'loan_type_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _termCountMeta = const VerificationMeta(
    'termCount',
  );
  @override
  late final GeneratedColumn<int> termCount = GeneratedColumn<int>(
    'term_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _interestRateMeta = const VerificationMeta(
    'interestRate',
  );
  @override
  late final GeneratedColumn<double> interestRate = GeneratedColumn<double>(
    'interest_rate',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentDayMeta = const VerificationMeta(
    'paymentDay',
  );
  @override
  late final GeneratedColumn<int> paymentDay = GeneratedColumn<int>(
    'payment_day',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentAmountMeta = const VerificationMeta(
    'paymentAmount',
  );
  @override
  late final GeneratedColumn<double> paymentAmount = GeneratedColumn<double>(
    'payment_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanDateMeta = const VerificationMeta(
    'loanDate',
  );
  @override
  late final GeneratedColumn<DateTime> loanDate = GeneratedColumn<DateTime>(
    'loan_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDate,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    loanId,
    loanNo,
    idClient,
    loanTermId,
    authorizeId,
    disbursementId,
    loanStateId,
    currencyId,
    loanTypeId,
    termCount,
    amount,
    interestRate,
    paymentDay,
    paymentAmount,
    loanDate,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('loan_no')) {
      context.handle(
        _loanNoMeta,
        loanNo.isAcceptableOrUnknown(data['loan_no']!, _loanNoMeta),
      );
    } else if (isInserting) {
      context.missing(_loanNoMeta);
    }
    if (data.containsKey('id_client')) {
      context.handle(
        _idClientMeta,
        idClient.isAcceptableOrUnknown(data['id_client']!, _idClientMeta),
      );
    } else if (isInserting) {
      context.missing(_idClientMeta);
    }
    if (data.containsKey('loan_term_id')) {
      context.handle(
        _loanTermIdMeta,
        loanTermId.isAcceptableOrUnknown(
          data['loan_term_id']!,
          _loanTermIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanTermIdMeta);
    }
    if (data.containsKey('authorize_id')) {
      context.handle(
        _authorizeIdMeta,
        authorizeId.isAcceptableOrUnknown(
          data['authorize_id']!,
          _authorizeIdMeta,
        ),
      );
    }
    if (data.containsKey('disbursement_id')) {
      context.handle(
        _disbursementIdMeta,
        disbursementId.isAcceptableOrUnknown(
          data['disbursement_id']!,
          _disbursementIdMeta,
        ),
      );
    }
    if (data.containsKey('loan_state_id')) {
      context.handle(
        _loanStateIdMeta,
        loanStateId.isAcceptableOrUnknown(
          data['loan_state_id']!,
          _loanStateIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanStateIdMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
        _currencyIdMeta,
        currencyId.isAcceptableOrUnknown(data['currency_id']!, _currencyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('loan_type_id')) {
      context.handle(
        _loanTypeIdMeta,
        loanTypeId.isAcceptableOrUnknown(
          data['loan_type_id']!,
          _loanTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanTypeIdMeta);
    }
    if (data.containsKey('term_count')) {
      context.handle(
        _termCountMeta,
        termCount.isAcceptableOrUnknown(data['term_count']!, _termCountMeta),
      );
    } else if (isInserting) {
      context.missing(_termCountMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('interest_rate')) {
      context.handle(
        _interestRateMeta,
        interestRate.isAcceptableOrUnknown(
          data['interest_rate']!,
          _interestRateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_interestRateMeta);
    }
    if (data.containsKey('payment_day')) {
      context.handle(
        _paymentDayMeta,
        paymentDay.isAcceptableOrUnknown(data['payment_day']!, _paymentDayMeta),
      );
    } else if (isInserting) {
      context.missing(_paymentDayMeta);
    }
    if (data.containsKey('payment_amount')) {
      context.handle(
        _paymentAmountMeta,
        paymentAmount.isAcceptableOrUnknown(
          data['payment_amount']!,
          _paymentAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentAmountMeta);
    }
    if (data.containsKey('loan_date')) {
      context.handle(
        _loanDateMeta,
        loanDate.isAcceptableOrUnknown(data['loan_date']!, _loanDateMeta),
      );
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {loanId};
  @override
  LoanTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanTableData(
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      loanNo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}loan_no'],
      )!,
      idClient: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_client'],
      )!,
      loanTermId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_term_id'],
      )!,
      authorizeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}authorize_id'],
      ),
      disbursementId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}disbursement_id'],
      ),
      loanStateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_state_id'],
      )!,
      currencyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_id'],
      )!,
      loanTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_type_id'],
      )!,
      termCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}term_count'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      interestRate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}interest_rate'],
      )!,
      paymentDay: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}payment_day'],
      )!,
      paymentAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}payment_amount'],
      )!,
      loanDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}loan_date'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $LoanTableTable createAlias(String alias) {
    return $LoanTableTable(attachedDatabase, alias);
  }
}

class LoanTableData extends DataClass implements Insertable<LoanTableData> {
  final String loanId;
  final int loanNo;
  final String idClient;
  final String loanTermId;
  final String? authorizeId;
  final String? disbursementId;
  final String loanStateId;
  final String currencyId;
  final String loanTypeId;
  final int termCount;
  final double amount;
  final double interestRate;
  final int paymentDay;
  final double paymentAmount;
  final DateTime loanDate;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const LoanTableData({
    required this.loanId,
    required this.loanNo,
    required this.idClient,
    required this.loanTermId,
    this.authorizeId,
    this.disbursementId,
    required this.loanStateId,
    required this.currencyId,
    required this.loanTypeId,
    required this.termCount,
    required this.amount,
    required this.interestRate,
    required this.paymentDay,
    required this.paymentAmount,
    required this.loanDate,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['loan_id'] = Variable<String>(loanId);
    map['loan_no'] = Variable<int>(loanNo);
    map['id_client'] = Variable<String>(idClient);
    map['loan_term_id'] = Variable<String>(loanTermId);
    if (!nullToAbsent || authorizeId != null) {
      map['authorize_id'] = Variable<String>(authorizeId);
    }
    if (!nullToAbsent || disbursementId != null) {
      map['disbursement_id'] = Variable<String>(disbursementId);
    }
    map['loan_state_id'] = Variable<String>(loanStateId);
    map['currency_id'] = Variable<String>(currencyId);
    map['loan_type_id'] = Variable<String>(loanTypeId);
    map['term_count'] = Variable<int>(termCount);
    map['amount'] = Variable<double>(amount);
    map['interest_rate'] = Variable<double>(interestRate);
    map['payment_day'] = Variable<int>(paymentDay);
    map['payment_amount'] = Variable<double>(paymentAmount);
    map['loan_date'] = Variable<DateTime>(loanDate);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  LoanTableCompanion toCompanion(bool nullToAbsent) {
    return LoanTableCompanion(
      loanId: Value(loanId),
      loanNo: Value(loanNo),
      idClient: Value(idClient),
      loanTermId: Value(loanTermId),
      authorizeId: authorizeId == null && nullToAbsent
          ? const Value.absent()
          : Value(authorizeId),
      disbursementId: disbursementId == null && nullToAbsent
          ? const Value.absent()
          : Value(disbursementId),
      loanStateId: Value(loanStateId),
      currencyId: Value(currencyId),
      loanTypeId: Value(loanTypeId),
      termCount: Value(termCount),
      amount: Value(amount),
      interestRate: Value(interestRate),
      paymentDay: Value(paymentDay),
      paymentAmount: Value(paymentAmount),
      loanDate: Value(loanDate),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory LoanTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanTableData(
      loanId: serializer.fromJson<String>(json['loanId']),
      loanNo: serializer.fromJson<int>(json['loanNo']),
      idClient: serializer.fromJson<String>(json['idClient']),
      loanTermId: serializer.fromJson<String>(json['loanTermId']),
      authorizeId: serializer.fromJson<String?>(json['authorizeId']),
      disbursementId: serializer.fromJson<String?>(json['disbursementId']),
      loanStateId: serializer.fromJson<String>(json['loanStateId']),
      currencyId: serializer.fromJson<String>(json['currencyId']),
      loanTypeId: serializer.fromJson<String>(json['loanTypeId']),
      termCount: serializer.fromJson<int>(json['termCount']),
      amount: serializer.fromJson<double>(json['amount']),
      interestRate: serializer.fromJson<double>(json['interestRate']),
      paymentDay: serializer.fromJson<int>(json['paymentDay']),
      paymentAmount: serializer.fromJson<double>(json['paymentAmount']),
      loanDate: serializer.fromJson<DateTime>(json['loanDate']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'loanId': serializer.toJson<String>(loanId),
      'loanNo': serializer.toJson<int>(loanNo),
      'idClient': serializer.toJson<String>(idClient),
      'loanTermId': serializer.toJson<String>(loanTermId),
      'authorizeId': serializer.toJson<String?>(authorizeId),
      'disbursementId': serializer.toJson<String?>(disbursementId),
      'loanStateId': serializer.toJson<String>(loanStateId),
      'currencyId': serializer.toJson<String>(currencyId),
      'loanTypeId': serializer.toJson<String>(loanTypeId),
      'termCount': serializer.toJson<int>(termCount),
      'amount': serializer.toJson<double>(amount),
      'interestRate': serializer.toJson<double>(interestRate),
      'paymentDay': serializer.toJson<int>(paymentDay),
      'paymentAmount': serializer.toJson<double>(paymentAmount),
      'loanDate': serializer.toJson<DateTime>(loanDate),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  LoanTableData copyWith({
    String? loanId,
    int? loanNo,
    String? idClient,
    String? loanTermId,
    Value<String?> authorizeId = const Value.absent(),
    Value<String?> disbursementId = const Value.absent(),
    String? loanStateId,
    String? currencyId,
    String? loanTypeId,
    int? termCount,
    double? amount,
    double? interestRate,
    int? paymentDay,
    double? paymentAmount,
    DateTime? loanDate,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => LoanTableData(
    loanId: loanId ?? this.loanId,
    loanNo: loanNo ?? this.loanNo,
    idClient: idClient ?? this.idClient,
    loanTermId: loanTermId ?? this.loanTermId,
    authorizeId: authorizeId.present ? authorizeId.value : this.authorizeId,
    disbursementId: disbursementId.present
        ? disbursementId.value
        : this.disbursementId,
    loanStateId: loanStateId ?? this.loanStateId,
    currencyId: currencyId ?? this.currencyId,
    loanTypeId: loanTypeId ?? this.loanTypeId,
    termCount: termCount ?? this.termCount,
    amount: amount ?? this.amount,
    interestRate: interestRate ?? this.interestRate,
    paymentDay: paymentDay ?? this.paymentDay,
    paymentAmount: paymentAmount ?? this.paymentAmount,
    loanDate: loanDate ?? this.loanDate,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  LoanTableData copyWithCompanion(LoanTableCompanion data) {
    return LoanTableData(
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      loanNo: data.loanNo.present ? data.loanNo.value : this.loanNo,
      idClient: data.idClient.present ? data.idClient.value : this.idClient,
      loanTermId: data.loanTermId.present
          ? data.loanTermId.value
          : this.loanTermId,
      authorizeId: data.authorizeId.present
          ? data.authorizeId.value
          : this.authorizeId,
      disbursementId: data.disbursementId.present
          ? data.disbursementId.value
          : this.disbursementId,
      loanStateId: data.loanStateId.present
          ? data.loanStateId.value
          : this.loanStateId,
      currencyId: data.currencyId.present
          ? data.currencyId.value
          : this.currencyId,
      loanTypeId: data.loanTypeId.present
          ? data.loanTypeId.value
          : this.loanTypeId,
      termCount: data.termCount.present ? data.termCount.value : this.termCount,
      amount: data.amount.present ? data.amount.value : this.amount,
      interestRate: data.interestRate.present
          ? data.interestRate.value
          : this.interestRate,
      paymentDay: data.paymentDay.present
          ? data.paymentDay.value
          : this.paymentDay,
      paymentAmount: data.paymentAmount.present
          ? data.paymentAmount.value
          : this.paymentAmount,
      loanDate: data.loanDate.present ? data.loanDate.value : this.loanDate,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanTableData(')
          ..write('loanId: $loanId, ')
          ..write('loanNo: $loanNo, ')
          ..write('idClient: $idClient, ')
          ..write('loanTermId: $loanTermId, ')
          ..write('authorizeId: $authorizeId, ')
          ..write('disbursementId: $disbursementId, ')
          ..write('loanStateId: $loanStateId, ')
          ..write('currencyId: $currencyId, ')
          ..write('loanTypeId: $loanTypeId, ')
          ..write('termCount: $termCount, ')
          ..write('amount: $amount, ')
          ..write('interestRate: $interestRate, ')
          ..write('paymentDay: $paymentDay, ')
          ..write('paymentAmount: $paymentAmount, ')
          ..write('loanDate: $loanDate, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    loanId,
    loanNo,
    idClient,
    loanTermId,
    authorizeId,
    disbursementId,
    loanStateId,
    currencyId,
    loanTypeId,
    termCount,
    amount,
    interestRate,
    paymentDay,
    paymentAmount,
    loanDate,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanTableData &&
          other.loanId == this.loanId &&
          other.loanNo == this.loanNo &&
          other.idClient == this.idClient &&
          other.loanTermId == this.loanTermId &&
          other.authorizeId == this.authorizeId &&
          other.disbursementId == this.disbursementId &&
          other.loanStateId == this.loanStateId &&
          other.currencyId == this.currencyId &&
          other.loanTypeId == this.loanTypeId &&
          other.termCount == this.termCount &&
          other.amount == this.amount &&
          other.interestRate == this.interestRate &&
          other.paymentDay == this.paymentDay &&
          other.paymentAmount == this.paymentAmount &&
          other.loanDate == this.loanDate &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class LoanTableCompanion extends UpdateCompanion<LoanTableData> {
  final Value<String> loanId;
  final Value<int> loanNo;
  final Value<String> idClient;
  final Value<String> loanTermId;
  final Value<String?> authorizeId;
  final Value<String?> disbursementId;
  final Value<String> loanStateId;
  final Value<String> currencyId;
  final Value<String> loanTypeId;
  final Value<int> termCount;
  final Value<double> amount;
  final Value<double> interestRate;
  final Value<int> paymentDay;
  final Value<double> paymentAmount;
  final Value<DateTime> loanDate;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const LoanTableCompanion({
    this.loanId = const Value.absent(),
    this.loanNo = const Value.absent(),
    this.idClient = const Value.absent(),
    this.loanTermId = const Value.absent(),
    this.authorizeId = const Value.absent(),
    this.disbursementId = const Value.absent(),
    this.loanStateId = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.loanTypeId = const Value.absent(),
    this.termCount = const Value.absent(),
    this.amount = const Value.absent(),
    this.interestRate = const Value.absent(),
    this.paymentDay = const Value.absent(),
    this.paymentAmount = const Value.absent(),
    this.loanDate = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanTableCompanion.insert({
    required String loanId,
    required int loanNo,
    required String idClient,
    required String loanTermId,
    this.authorizeId = const Value.absent(),
    this.disbursementId = const Value.absent(),
    required String loanStateId,
    required String currencyId,
    required String loanTypeId,
    required int termCount,
    required double amount,
    required double interestRate,
    required int paymentDay,
    required double paymentAmount,
    this.loanDate = const Value.absent(),
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : loanId = Value(loanId),
       loanNo = Value(loanNo),
       idClient = Value(idClient),
       loanTermId = Value(loanTermId),
       loanStateId = Value(loanStateId),
       currencyId = Value(currencyId),
       loanTypeId = Value(loanTypeId),
       termCount = Value(termCount),
       amount = Value(amount),
       interestRate = Value(interestRate),
       paymentDay = Value(paymentDay),
       paymentAmount = Value(paymentAmount),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<LoanTableData> custom({
    Expression<String>? loanId,
    Expression<int>? loanNo,
    Expression<String>? idClient,
    Expression<String>? loanTermId,
    Expression<String>? authorizeId,
    Expression<String>? disbursementId,
    Expression<String>? loanStateId,
    Expression<String>? currencyId,
    Expression<String>? loanTypeId,
    Expression<int>? termCount,
    Expression<double>? amount,
    Expression<double>? interestRate,
    Expression<int>? paymentDay,
    Expression<double>? paymentAmount,
    Expression<DateTime>? loanDate,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (loanId != null) 'loan_id': loanId,
      if (loanNo != null) 'loan_no': loanNo,
      if (idClient != null) 'id_client': idClient,
      if (loanTermId != null) 'loan_term_id': loanTermId,
      if (authorizeId != null) 'authorize_id': authorizeId,
      if (disbursementId != null) 'disbursement_id': disbursementId,
      if (loanStateId != null) 'loan_state_id': loanStateId,
      if (currencyId != null) 'currency_id': currencyId,
      if (loanTypeId != null) 'loan_type_id': loanTypeId,
      if (termCount != null) 'term_count': termCount,
      if (amount != null) 'amount': amount,
      if (interestRate != null) 'interest_rate': interestRate,
      if (paymentDay != null) 'payment_day': paymentDay,
      if (paymentAmount != null) 'payment_amount': paymentAmount,
      if (loanDate != null) 'loan_date': loanDate,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanTableCompanion copyWith({
    Value<String>? loanId,
    Value<int>? loanNo,
    Value<String>? idClient,
    Value<String>? loanTermId,
    Value<String?>? authorizeId,
    Value<String?>? disbursementId,
    Value<String>? loanStateId,
    Value<String>? currencyId,
    Value<String>? loanTypeId,
    Value<int>? termCount,
    Value<double>? amount,
    Value<double>? interestRate,
    Value<int>? paymentDay,
    Value<double>? paymentAmount,
    Value<DateTime>? loanDate,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return LoanTableCompanion(
      loanId: loanId ?? this.loanId,
      loanNo: loanNo ?? this.loanNo,
      idClient: idClient ?? this.idClient,
      loanTermId: loanTermId ?? this.loanTermId,
      authorizeId: authorizeId ?? this.authorizeId,
      disbursementId: disbursementId ?? this.disbursementId,
      loanStateId: loanStateId ?? this.loanStateId,
      currencyId: currencyId ?? this.currencyId,
      loanTypeId: loanTypeId ?? this.loanTypeId,
      termCount: termCount ?? this.termCount,
      amount: amount ?? this.amount,
      interestRate: interestRate ?? this.interestRate,
      paymentDay: paymentDay ?? this.paymentDay,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      loanDate: loanDate ?? this.loanDate,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (loanNo.present) {
      map['loan_no'] = Variable<int>(loanNo.value);
    }
    if (idClient.present) {
      map['id_client'] = Variable<String>(idClient.value);
    }
    if (loanTermId.present) {
      map['loan_term_id'] = Variable<String>(loanTermId.value);
    }
    if (authorizeId.present) {
      map['authorize_id'] = Variable<String>(authorizeId.value);
    }
    if (disbursementId.present) {
      map['disbursement_id'] = Variable<String>(disbursementId.value);
    }
    if (loanStateId.present) {
      map['loan_state_id'] = Variable<String>(loanStateId.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (loanTypeId.present) {
      map['loan_type_id'] = Variable<String>(loanTypeId.value);
    }
    if (termCount.present) {
      map['term_count'] = Variable<int>(termCount.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (interestRate.present) {
      map['interest_rate'] = Variable<double>(interestRate.value);
    }
    if (paymentDay.present) {
      map['payment_day'] = Variable<int>(paymentDay.value);
    }
    if (paymentAmount.present) {
      map['payment_amount'] = Variable<double>(paymentAmount.value);
    }
    if (loanDate.present) {
      map['loan_date'] = Variable<DateTime>(loanDate.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanTableCompanion(')
          ..write('loanId: $loanId, ')
          ..write('loanNo: $loanNo, ')
          ..write('idClient: $idClient, ')
          ..write('loanTermId: $loanTermId, ')
          ..write('authorizeId: $authorizeId, ')
          ..write('disbursementId: $disbursementId, ')
          ..write('loanStateId: $loanStateId, ')
          ..write('currencyId: $currencyId, ')
          ..write('loanTypeId: $loanTypeId, ')
          ..write('termCount: $termCount, ')
          ..write('amount: $amount, ')
          ..write('interestRate: $interestRate, ')
          ..write('paymentDay: $paymentDay, ')
          ..write('paymentAmount: $paymentAmount, ')
          ..write('loanDate: $loanDate, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanAuthorizationTableTable extends LoanAuthorizationTable
    with TableInfo<$LoanAuthorizationTableTable, LoanAuthorizationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanAuthorizationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _authorizationIdMeta = const VerificationMeta(
    'authorizationId',
  );
  @override
  late final GeneratedColumn<String> authorizationId = GeneratedColumn<String>(
    'authorization_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorizeByMeta = const VerificationMeta(
    'authorizeBy',
  );
  @override
  late final GeneratedColumn<String> authorizeBy = GeneratedColumn<String>(
    'authorize_by',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorizeDateMeta = const VerificationMeta(
    'authorizeDate',
  );
  @override
  late final GeneratedColumn<DateTime> authorizeDate =
      GeneratedColumn<DateTime>(
        'authorize_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    authorizationId,
    authorizeBy,
    authorizeDate,
    comment,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_authorization_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanAuthorizationTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('authorization_id')) {
      context.handle(
        _authorizationIdMeta,
        authorizationId.isAcceptableOrUnknown(
          data['authorization_id']!,
          _authorizationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_authorizationIdMeta);
    }
    if (data.containsKey('authorize_by')) {
      context.handle(
        _authorizeByMeta,
        authorizeBy.isAcceptableOrUnknown(
          data['authorize_by']!,
          _authorizeByMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_authorizeByMeta);
    }
    if (data.containsKey('authorize_date')) {
      context.handle(
        _authorizeDateMeta,
        authorizeDate.isAcceptableOrUnknown(
          data['authorize_date']!,
          _authorizeDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_authorizeDateMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {authorizationId};
  @override
  LoanAuthorizationTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanAuthorizationTableData(
      authorizationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}authorization_id'],
      )!,
      authorizeBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}authorize_by'],
      )!,
      authorizeDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}authorize_date'],
      )!,
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      ),
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $LoanAuthorizationTableTable createAlias(String alias) {
    return $LoanAuthorizationTableTable(attachedDatabase, alias);
  }
}

class LoanAuthorizationTableData extends DataClass
    implements Insertable<LoanAuthorizationTableData> {
  final String authorizationId;
  final String authorizeBy;
  final DateTime authorizeDate;
  final String? comment;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const LoanAuthorizationTableData({
    required this.authorizationId,
    required this.authorizeBy,
    required this.authorizeDate,
    this.comment,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['authorization_id'] = Variable<String>(authorizationId);
    map['authorize_by'] = Variable<String>(authorizeBy);
    map['authorize_date'] = Variable<DateTime>(authorizeDate);
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  LoanAuthorizationTableCompanion toCompanion(bool nullToAbsent) {
    return LoanAuthorizationTableCompanion(
      authorizationId: Value(authorizationId),
      authorizeBy: Value(authorizeBy),
      authorizeDate: Value(authorizeDate),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory LoanAuthorizationTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanAuthorizationTableData(
      authorizationId: serializer.fromJson<String>(json['authorizationId']),
      authorizeBy: serializer.fromJson<String>(json['authorizeBy']),
      authorizeDate: serializer.fromJson<DateTime>(json['authorizeDate']),
      comment: serializer.fromJson<String?>(json['comment']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'authorizationId': serializer.toJson<String>(authorizationId),
      'authorizeBy': serializer.toJson<String>(authorizeBy),
      'authorizeDate': serializer.toJson<DateTime>(authorizeDate),
      'comment': serializer.toJson<String?>(comment),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  LoanAuthorizationTableData copyWith({
    String? authorizationId,
    String? authorizeBy,
    DateTime? authorizeDate,
    Value<String?> comment = const Value.absent(),
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => LoanAuthorizationTableData(
    authorizationId: authorizationId ?? this.authorizationId,
    authorizeBy: authorizeBy ?? this.authorizeBy,
    authorizeDate: authorizeDate ?? this.authorizeDate,
    comment: comment.present ? comment.value : this.comment,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  LoanAuthorizationTableData copyWithCompanion(
    LoanAuthorizationTableCompanion data,
  ) {
    return LoanAuthorizationTableData(
      authorizationId: data.authorizationId.present
          ? data.authorizationId.value
          : this.authorizationId,
      authorizeBy: data.authorizeBy.present
          ? data.authorizeBy.value
          : this.authorizeBy,
      authorizeDate: data.authorizeDate.present
          ? data.authorizeDate.value
          : this.authorizeDate,
      comment: data.comment.present ? data.comment.value : this.comment,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanAuthorizationTableData(')
          ..write('authorizationId: $authorizationId, ')
          ..write('authorizeBy: $authorizeBy, ')
          ..write('authorizeDate: $authorizeDate, ')
          ..write('comment: $comment, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    authorizationId,
    authorizeBy,
    authorizeDate,
    comment,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanAuthorizationTableData &&
          other.authorizationId == this.authorizationId &&
          other.authorizeBy == this.authorizeBy &&
          other.authorizeDate == this.authorizeDate &&
          other.comment == this.comment &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class LoanAuthorizationTableCompanion
    extends UpdateCompanion<LoanAuthorizationTableData> {
  final Value<String> authorizationId;
  final Value<String> authorizeBy;
  final Value<DateTime> authorizeDate;
  final Value<String?> comment;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const LoanAuthorizationTableCompanion({
    this.authorizationId = const Value.absent(),
    this.authorizeBy = const Value.absent(),
    this.authorizeDate = const Value.absent(),
    this.comment = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanAuthorizationTableCompanion.insert({
    required String authorizationId,
    required String authorizeBy,
    required DateTime authorizeDate,
    this.comment = const Value.absent(),
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : authorizationId = Value(authorizationId),
       authorizeBy = Value(authorizeBy),
       authorizeDate = Value(authorizeDate),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<LoanAuthorizationTableData> custom({
    Expression<String>? authorizationId,
    Expression<String>? authorizeBy,
    Expression<DateTime>? authorizeDate,
    Expression<String>? comment,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (authorizationId != null) 'authorization_id': authorizationId,
      if (authorizeBy != null) 'authorize_by': authorizeBy,
      if (authorizeDate != null) 'authorize_date': authorizeDate,
      if (comment != null) 'comment': comment,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanAuthorizationTableCompanion copyWith({
    Value<String>? authorizationId,
    Value<String>? authorizeBy,
    Value<DateTime>? authorizeDate,
    Value<String?>? comment,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return LoanAuthorizationTableCompanion(
      authorizationId: authorizationId ?? this.authorizationId,
      authorizeBy: authorizeBy ?? this.authorizeBy,
      authorizeDate: authorizeDate ?? this.authorizeDate,
      comment: comment ?? this.comment,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (authorizationId.present) {
      map['authorization_id'] = Variable<String>(authorizationId.value);
    }
    if (authorizeBy.present) {
      map['authorize_by'] = Variable<String>(authorizeBy.value);
    }
    if (authorizeDate.present) {
      map['authorize_date'] = Variable<DateTime>(authorizeDate.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanAuthorizationTableCompanion(')
          ..write('authorizationId: $authorizationId, ')
          ..write('authorizeBy: $authorizeBy, ')
          ..write('authorizeDate: $authorizeDate, ')
          ..write('comment: $comment, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanStateTableTable extends LoanStateTable
    with TableInfo<$LoanStateTableTable, LoanStateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanStateTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _loanStateIdMeta = const VerificationMeta(
    'loanStateId',
  );
  @override
  late final GeneratedColumn<String> loanStateId = GeneratedColumn<String>(
    'loan_state_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [loanStateId, description, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_state_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanStateTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('loan_state_id')) {
      context.handle(
        _loanStateIdMeta,
        loanStateId.isAcceptableOrUnknown(
          data['loan_state_id']!,
          _loanStateIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanStateIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {loanStateId};
  @override
  LoanStateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanStateTableData(
      loanStateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_state_id'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $LoanStateTableTable createAlias(String alias) {
    return $LoanStateTableTable(attachedDatabase, alias);
  }
}

class LoanStateTableData extends DataClass
    implements Insertable<LoanStateTableData> {
  final String loanStateId;
  final String? description;
  final bool isActive;
  const LoanStateTableData({
    required this.loanStateId,
    this.description,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['loan_state_id'] = Variable<String>(loanStateId);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  LoanStateTableCompanion toCompanion(bool nullToAbsent) {
    return LoanStateTableCompanion(
      loanStateId: Value(loanStateId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isActive: Value(isActive),
    );
  }

  factory LoanStateTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanStateTableData(
      loanStateId: serializer.fromJson<String>(json['loanStateId']),
      description: serializer.fromJson<String?>(json['description']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'loanStateId': serializer.toJson<String>(loanStateId),
      'description': serializer.toJson<String?>(description),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  LoanStateTableData copyWith({
    String? loanStateId,
    Value<String?> description = const Value.absent(),
    bool? isActive,
  }) => LoanStateTableData(
    loanStateId: loanStateId ?? this.loanStateId,
    description: description.present ? description.value : this.description,
    isActive: isActive ?? this.isActive,
  );
  LoanStateTableData copyWithCompanion(LoanStateTableCompanion data) {
    return LoanStateTableData(
      loanStateId: data.loanStateId.present
          ? data.loanStateId.value
          : this.loanStateId,
      description: data.description.present
          ? data.description.value
          : this.description,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanStateTableData(')
          ..write('loanStateId: $loanStateId, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(loanStateId, description, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanStateTableData &&
          other.loanStateId == this.loanStateId &&
          other.description == this.description &&
          other.isActive == this.isActive);
}

class LoanStateTableCompanion extends UpdateCompanion<LoanStateTableData> {
  final Value<String> loanStateId;
  final Value<String?> description;
  final Value<bool> isActive;
  final Value<int> rowid;
  const LoanStateTableCompanion({
    this.loanStateId = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanStateTableCompanion.insert({
    required String loanStateId,
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : loanStateId = Value(loanStateId);
  static Insertable<LoanStateTableData> custom({
    Expression<String>? loanStateId,
    Expression<String>? description,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (loanStateId != null) 'loan_state_id': loanStateId,
      if (description != null) 'description': description,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanStateTableCompanion copyWith({
    Value<String>? loanStateId,
    Value<String?>? description,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return LoanStateTableCompanion(
      loanStateId: loanStateId ?? this.loanStateId,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (loanStateId.present) {
      map['loan_state_id'] = Variable<String>(loanStateId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanStateTableCompanion(')
          ..write('loanStateId: $loanStateId, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanTermTableTable extends LoanTermTable
    with TableInfo<$LoanTermTableTable, LoanTermTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanTermTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _loanTermIdMeta = const VerificationMeta(
    'loanTermId',
  );
  @override
  late final GeneratedColumn<String> loanTermId = GeneratedColumn<String>(
    'loan_term_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _termFrecuencyMeta = const VerificationMeta(
    'termFrecuency',
  );
  @override
  late final GeneratedColumn<String> termFrecuency = GeneratedColumn<String>(
    'term_frecuency',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    loanTermId,
    termFrecuency,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_term_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanTermTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('loan_term_id')) {
      context.handle(
        _loanTermIdMeta,
        loanTermId.isAcceptableOrUnknown(
          data['loan_term_id']!,
          _loanTermIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanTermIdMeta);
    }
    if (data.containsKey('term_frecuency')) {
      context.handle(
        _termFrecuencyMeta,
        termFrecuency.isAcceptableOrUnknown(
          data['term_frecuency']!,
          _termFrecuencyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_termFrecuencyMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {loanTermId};
  @override
  LoanTermTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanTermTableData(
      loanTermId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_term_id'],
      )!,
      termFrecuency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}term_frecuency'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $LoanTermTableTable createAlias(String alias) {
    return $LoanTermTableTable(attachedDatabase, alias);
  }
}

class LoanTermTableData extends DataClass
    implements Insertable<LoanTermTableData> {
  final String loanTermId;
  final String termFrecuency;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const LoanTermTableData({
    required this.loanTermId,
    required this.termFrecuency,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['loan_term_id'] = Variable<String>(loanTermId);
    map['term_frecuency'] = Variable<String>(termFrecuency);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  LoanTermTableCompanion toCompanion(bool nullToAbsent) {
    return LoanTermTableCompanion(
      loanTermId: Value(loanTermId),
      termFrecuency: Value(termFrecuency),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory LoanTermTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanTermTableData(
      loanTermId: serializer.fromJson<String>(json['loanTermId']),
      termFrecuency: serializer.fromJson<String>(json['termFrecuency']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'loanTermId': serializer.toJson<String>(loanTermId),
      'termFrecuency': serializer.toJson<String>(termFrecuency),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  LoanTermTableData copyWith({
    String? loanTermId,
    String? termFrecuency,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => LoanTermTableData(
    loanTermId: loanTermId ?? this.loanTermId,
    termFrecuency: termFrecuency ?? this.termFrecuency,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  LoanTermTableData copyWithCompanion(LoanTermTableCompanion data) {
    return LoanTermTableData(
      loanTermId: data.loanTermId.present
          ? data.loanTermId.value
          : this.loanTermId,
      termFrecuency: data.termFrecuency.present
          ? data.termFrecuency.value
          : this.termFrecuency,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanTermTableData(')
          ..write('loanTermId: $loanTermId, ')
          ..write('termFrecuency: $termFrecuency, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    loanTermId,
    termFrecuency,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanTermTableData &&
          other.loanTermId == this.loanTermId &&
          other.termFrecuency == this.termFrecuency &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class LoanTermTableCompanion extends UpdateCompanion<LoanTermTableData> {
  final Value<String> loanTermId;
  final Value<String> termFrecuency;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const LoanTermTableCompanion({
    this.loanTermId = const Value.absent(),
    this.termFrecuency = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanTermTableCompanion.insert({
    required String loanTermId,
    required String termFrecuency,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : loanTermId = Value(loanTermId),
       termFrecuency = Value(termFrecuency),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<LoanTermTableData> custom({
    Expression<String>? loanTermId,
    Expression<String>? termFrecuency,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (loanTermId != null) 'loan_term_id': loanTermId,
      if (termFrecuency != null) 'term_frecuency': termFrecuency,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanTermTableCompanion copyWith({
    Value<String>? loanTermId,
    Value<String>? termFrecuency,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return LoanTermTableCompanion(
      loanTermId: loanTermId ?? this.loanTermId,
      termFrecuency: termFrecuency ?? this.termFrecuency,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (loanTermId.present) {
      map['loan_term_id'] = Variable<String>(loanTermId.value);
    }
    if (termFrecuency.present) {
      map['term_frecuency'] = Variable<String>(termFrecuency.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanTermTableCompanion(')
          ..write('loanTermId: $loanTermId, ')
          ..write('termFrecuency: $termFrecuency, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanTypeTableTable extends LoanTypeTable
    with TableInfo<$LoanTypeTableTable, LoanTypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _loanTypeIdMeta = const VerificationMeta(
    'loanTypeId',
  );
  @override
  late final GeneratedColumn<String> loanTypeId = GeneratedColumn<String>(
    'loan_type_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [loanTypeId, description, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_type_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanTypeTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('loan_type_id')) {
      context.handle(
        _loanTypeIdMeta,
        loanTypeId.isAcceptableOrUnknown(
          data['loan_type_id']!,
          _loanTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_loanTypeIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {loanTypeId};
  @override
  LoanTypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanTypeTableData(
      loanTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_type_id'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $LoanTypeTableTable createAlias(String alias) {
    return $LoanTypeTableTable(attachedDatabase, alias);
  }
}

class LoanTypeTableData extends DataClass
    implements Insertable<LoanTypeTableData> {
  final String loanTypeId;
  final String description;
  final bool isActive;
  const LoanTypeTableData({
    required this.loanTypeId,
    required this.description,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['loan_type_id'] = Variable<String>(loanTypeId);
    map['description'] = Variable<String>(description);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  LoanTypeTableCompanion toCompanion(bool nullToAbsent) {
    return LoanTypeTableCompanion(
      loanTypeId: Value(loanTypeId),
      description: Value(description),
      isActive: Value(isActive),
    );
  }

  factory LoanTypeTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanTypeTableData(
      loanTypeId: serializer.fromJson<String>(json['loanTypeId']),
      description: serializer.fromJson<String>(json['description']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'loanTypeId': serializer.toJson<String>(loanTypeId),
      'description': serializer.toJson<String>(description),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  LoanTypeTableData copyWith({
    String? loanTypeId,
    String? description,
    bool? isActive,
  }) => LoanTypeTableData(
    loanTypeId: loanTypeId ?? this.loanTypeId,
    description: description ?? this.description,
    isActive: isActive ?? this.isActive,
  );
  LoanTypeTableData copyWithCompanion(LoanTypeTableCompanion data) {
    return LoanTypeTableData(
      loanTypeId: data.loanTypeId.present
          ? data.loanTypeId.value
          : this.loanTypeId,
      description: data.description.present
          ? data.description.value
          : this.description,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanTypeTableData(')
          ..write('loanTypeId: $loanTypeId, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(loanTypeId, description, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanTypeTableData &&
          other.loanTypeId == this.loanTypeId &&
          other.description == this.description &&
          other.isActive == this.isActive);
}

class LoanTypeTableCompanion extends UpdateCompanion<LoanTypeTableData> {
  final Value<String> loanTypeId;
  final Value<String> description;
  final Value<bool> isActive;
  final Value<int> rowid;
  const LoanTypeTableCompanion({
    this.loanTypeId = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanTypeTableCompanion.insert({
    required String loanTypeId,
    required String description,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : loanTypeId = Value(loanTypeId),
       description = Value(description);
  static Insertable<LoanTypeTableData> custom({
    Expression<String>? loanTypeId,
    Expression<String>? description,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (loanTypeId != null) 'loan_type_id': loanTypeId,
      if (description != null) 'description': description,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanTypeTableCompanion copyWith({
    Value<String>? loanTypeId,
    Value<String>? description,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return LoanTypeTableCompanion(
      loanTypeId: loanTypeId ?? this.loanTypeId,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (loanTypeId.present) {
      map['loan_type_id'] = Variable<String>(loanTypeId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanTypeTableCompanion(')
          ..write('loanTypeId: $loanTypeId, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTableTable extends PaymentsTable
    with TableInfo<$PaymentsTableTable, PaymentsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _paymentIdMeta = const VerificationMeta(
    'paymentId',
  );
  @override
  late final GeneratedColumn<String> paymentId = GeneratedColumn<String>(
    'payment_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noPaymentMeta = const VerificationMeta(
    'noPayment',
  );
  @override
  late final GeneratedColumn<int> noPayment = GeneratedColumn<int>(
    'no_payment',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _interestMeta = const VerificationMeta(
    'interest',
  );
  @override
  late final GeneratedColumn<double> interest = GeneratedColumn<double>(
    'interest',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remainingAmountMeta = const VerificationMeta(
    'remainingAmount',
  );
  @override
  late final GeneratedColumn<double> remainingAmount = GeneratedColumn<double>(
    'remaining_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    paymentId,
    loanId,
    noPayment,
    amount,
    interest,
    remainingAmount,
    date,
    note,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payments_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PaymentsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('payment_id')) {
      context.handle(
        _paymentIdMeta,
        paymentId.isAcceptableOrUnknown(data['payment_id']!, _paymentIdMeta),
      );
    } else if (isInserting) {
      context.missing(_paymentIdMeta);
    }
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('no_payment')) {
      context.handle(
        _noPaymentMeta,
        noPayment.isAcceptableOrUnknown(data['no_payment']!, _noPaymentMeta),
      );
    } else if (isInserting) {
      context.missing(_noPaymentMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('interest')) {
      context.handle(
        _interestMeta,
        interest.isAcceptableOrUnknown(data['interest']!, _interestMeta),
      );
    } else if (isInserting) {
      context.missing(_interestMeta);
    }
    if (data.containsKey('remaining_amount')) {
      context.handle(
        _remainingAmountMeta,
        remainingAmount.isAcceptableOrUnknown(
          data['remaining_amount']!,
          _remainingAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_remainingAmountMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {paymentId};
  @override
  PaymentsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentsTableData(
      paymentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_id'],
      )!,
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      noPayment: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}no_payment'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      interest: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}interest'],
      )!,
      remainingAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}remaining_amount'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $PaymentsTableTable createAlias(String alias) {
    return $PaymentsTableTable(attachedDatabase, alias);
  }
}

class PaymentsTableData extends DataClass
    implements Insertable<PaymentsTableData> {
  final String paymentId;
  final String loanId;
  final int noPayment;
  final double amount;
  final double interest;
  final double remainingAmount;
  final DateTime date;
  final String note;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const PaymentsTableData({
    required this.paymentId,
    required this.loanId,
    required this.noPayment,
    required this.amount,
    required this.interest,
    required this.remainingAmount,
    required this.date,
    required this.note,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['payment_id'] = Variable<String>(paymentId);
    map['loan_id'] = Variable<String>(loanId);
    map['no_payment'] = Variable<int>(noPayment);
    map['amount'] = Variable<double>(amount);
    map['interest'] = Variable<double>(interest);
    map['remaining_amount'] = Variable<double>(remainingAmount);
    map['date'] = Variable<DateTime>(date);
    map['note'] = Variable<String>(note);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  PaymentsTableCompanion toCompanion(bool nullToAbsent) {
    return PaymentsTableCompanion(
      paymentId: Value(paymentId),
      loanId: Value(loanId),
      noPayment: Value(noPayment),
      amount: Value(amount),
      interest: Value(interest),
      remainingAmount: Value(remainingAmount),
      date: Value(date),
      note: Value(note),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory PaymentsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentsTableData(
      paymentId: serializer.fromJson<String>(json['paymentId']),
      loanId: serializer.fromJson<String>(json['loanId']),
      noPayment: serializer.fromJson<int>(json['noPayment']),
      amount: serializer.fromJson<double>(json['amount']),
      interest: serializer.fromJson<double>(json['interest']),
      remainingAmount: serializer.fromJson<double>(json['remainingAmount']),
      date: serializer.fromJson<DateTime>(json['date']),
      note: serializer.fromJson<String>(json['note']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'paymentId': serializer.toJson<String>(paymentId),
      'loanId': serializer.toJson<String>(loanId),
      'noPayment': serializer.toJson<int>(noPayment),
      'amount': serializer.toJson<double>(amount),
      'interest': serializer.toJson<double>(interest),
      'remainingAmount': serializer.toJson<double>(remainingAmount),
      'date': serializer.toJson<DateTime>(date),
      'note': serializer.toJson<String>(note),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  PaymentsTableData copyWith({
    String? paymentId,
    String? loanId,
    int? noPayment,
    double? amount,
    double? interest,
    double? remainingAmount,
    DateTime? date,
    String? note,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => PaymentsTableData(
    paymentId: paymentId ?? this.paymentId,
    loanId: loanId ?? this.loanId,
    noPayment: noPayment ?? this.noPayment,
    amount: amount ?? this.amount,
    interest: interest ?? this.interest,
    remainingAmount: remainingAmount ?? this.remainingAmount,
    date: date ?? this.date,
    note: note ?? this.note,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  PaymentsTableData copyWithCompanion(PaymentsTableCompanion data) {
    return PaymentsTableData(
      paymentId: data.paymentId.present ? data.paymentId.value : this.paymentId,
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      noPayment: data.noPayment.present ? data.noPayment.value : this.noPayment,
      amount: data.amount.present ? data.amount.value : this.amount,
      interest: data.interest.present ? data.interest.value : this.interest,
      remainingAmount: data.remainingAmount.present
          ? data.remainingAmount.value
          : this.remainingAmount,
      date: data.date.present ? data.date.value : this.date,
      note: data.note.present ? data.note.value : this.note,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsTableData(')
          ..write('paymentId: $paymentId, ')
          ..write('loanId: $loanId, ')
          ..write('noPayment: $noPayment, ')
          ..write('amount: $amount, ')
          ..write('interest: $interest, ')
          ..write('remainingAmount: $remainingAmount, ')
          ..write('date: $date, ')
          ..write('note: $note, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    paymentId,
    loanId,
    noPayment,
    amount,
    interest,
    remainingAmount,
    date,
    note,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentsTableData &&
          other.paymentId == this.paymentId &&
          other.loanId == this.loanId &&
          other.noPayment == this.noPayment &&
          other.amount == this.amount &&
          other.interest == this.interest &&
          other.remainingAmount == this.remainingAmount &&
          other.date == this.date &&
          other.note == this.note &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class PaymentsTableCompanion extends UpdateCompanion<PaymentsTableData> {
  final Value<String> paymentId;
  final Value<String> loanId;
  final Value<int> noPayment;
  final Value<double> amount;
  final Value<double> interest;
  final Value<double> remainingAmount;
  final Value<DateTime> date;
  final Value<String> note;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const PaymentsTableCompanion({
    this.paymentId = const Value.absent(),
    this.loanId = const Value.absent(),
    this.noPayment = const Value.absent(),
    this.amount = const Value.absent(),
    this.interest = const Value.absent(),
    this.remainingAmount = const Value.absent(),
    this.date = const Value.absent(),
    this.note = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PaymentsTableCompanion.insert({
    required String paymentId,
    required String loanId,
    required int noPayment,
    required double amount,
    required double interest,
    required double remainingAmount,
    required DateTime date,
    required String note,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : paymentId = Value(paymentId),
       loanId = Value(loanId),
       noPayment = Value(noPayment),
       amount = Value(amount),
       interest = Value(interest),
       remainingAmount = Value(remainingAmount),
       date = Value(date),
       note = Value(note),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<PaymentsTableData> custom({
    Expression<String>? paymentId,
    Expression<String>? loanId,
    Expression<int>? noPayment,
    Expression<double>? amount,
    Expression<double>? interest,
    Expression<double>? remainingAmount,
    Expression<DateTime>? date,
    Expression<String>? note,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (paymentId != null) 'payment_id': paymentId,
      if (loanId != null) 'loan_id': loanId,
      if (noPayment != null) 'no_payment': noPayment,
      if (amount != null) 'amount': amount,
      if (interest != null) 'interest': interest,
      if (remainingAmount != null) 'remaining_amount': remainingAmount,
      if (date != null) 'date': date,
      if (note != null) 'note': note,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PaymentsTableCompanion copyWith({
    Value<String>? paymentId,
    Value<String>? loanId,
    Value<int>? noPayment,
    Value<double>? amount,
    Value<double>? interest,
    Value<double>? remainingAmount,
    Value<DateTime>? date,
    Value<String>? note,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return PaymentsTableCompanion(
      paymentId: paymentId ?? this.paymentId,
      loanId: loanId ?? this.loanId,
      noPayment: noPayment ?? this.noPayment,
      amount: amount ?? this.amount,
      interest: interest ?? this.interest,
      remainingAmount: remainingAmount ?? this.remainingAmount,
      date: date ?? this.date,
      note: note ?? this.note,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (paymentId.present) {
      map['payment_id'] = Variable<String>(paymentId.value);
    }
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (noPayment.present) {
      map['no_payment'] = Variable<int>(noPayment.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (interest.present) {
      map['interest'] = Variable<double>(interest.value);
    }
    if (remainingAmount.present) {
      map['remaining_amount'] = Variable<double>(remainingAmount.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsTableCompanion(')
          ..write('paymentId: $paymentId, ')
          ..write('loanId: $loanId, ')
          ..write('noPayment: $noPayment, ')
          ..write('amount: $amount, ')
          ..write('interest: $interest, ')
          ..write('remainingAmount: $remainingAmount, ')
          ..write('date: $date, ')
          ..write('note: $note, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LatePaymentsTableTable extends LatePaymentsTable
    with TableInfo<$LatePaymentsTableTable, LatePaymentsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LatePaymentsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idLatePaymentMeta = const VerificationMeta(
    'idLatePayment',
  );
  @override
  late final GeneratedColumn<String> idLatePayment = GeneratedColumn<String>(
    'id_late_payment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latePaymentMeta = const VerificationMeta(
    'latePayment',
  );
  @override
  late final GeneratedColumn<double> latePayment = GeneratedColumn<double>(
    'late_payment',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cantOverdueMeta = const VerificationMeta(
    'cantOverdue',
  );
  @override
  late final GeneratedColumn<int> cantOverdue = GeneratedColumn<int>(
    'cant_overdue',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idLatePayment,
    loanId,
    latePayment,
    cantOverdue,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'late_payments_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LatePaymentsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_late_payment')) {
      context.handle(
        _idLatePaymentMeta,
        idLatePayment.isAcceptableOrUnknown(
          data['id_late_payment']!,
          _idLatePaymentMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_idLatePaymentMeta);
    }
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('late_payment')) {
      context.handle(
        _latePaymentMeta,
        latePayment.isAcceptableOrUnknown(
          data['late_payment']!,
          _latePaymentMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_latePaymentMeta);
    }
    if (data.containsKey('cant_overdue')) {
      context.handle(
        _cantOverdueMeta,
        cantOverdue.isAcceptableOrUnknown(
          data['cant_overdue']!,
          _cantOverdueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cantOverdueMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idLatePayment};
  @override
  LatePaymentsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LatePaymentsTableData(
      idLatePayment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_late_payment'],
      )!,
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      latePayment: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}late_payment'],
      )!,
      cantOverdue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cant_overdue'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $LatePaymentsTableTable createAlias(String alias) {
    return $LatePaymentsTableTable(attachedDatabase, alias);
  }
}

class LatePaymentsTableData extends DataClass
    implements Insertable<LatePaymentsTableData> {
  final String idLatePayment;
  final String loanId;
  final double latePayment;
  final int cantOverdue;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const LatePaymentsTableData({
    required this.idLatePayment,
    required this.loanId,
    required this.latePayment,
    required this.cantOverdue,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_late_payment'] = Variable<String>(idLatePayment);
    map['loan_id'] = Variable<String>(loanId);
    map['late_payment'] = Variable<double>(latePayment);
    map['cant_overdue'] = Variable<int>(cantOverdue);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  LatePaymentsTableCompanion toCompanion(bool nullToAbsent) {
    return LatePaymentsTableCompanion(
      idLatePayment: Value(idLatePayment),
      loanId: Value(loanId),
      latePayment: Value(latePayment),
      cantOverdue: Value(cantOverdue),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory LatePaymentsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LatePaymentsTableData(
      idLatePayment: serializer.fromJson<String>(json['idLatePayment']),
      loanId: serializer.fromJson<String>(json['loanId']),
      latePayment: serializer.fromJson<double>(json['latePayment']),
      cantOverdue: serializer.fromJson<int>(json['cantOverdue']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idLatePayment': serializer.toJson<String>(idLatePayment),
      'loanId': serializer.toJson<String>(loanId),
      'latePayment': serializer.toJson<double>(latePayment),
      'cantOverdue': serializer.toJson<int>(cantOverdue),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  LatePaymentsTableData copyWith({
    String? idLatePayment,
    String? loanId,
    double? latePayment,
    int? cantOverdue,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => LatePaymentsTableData(
    idLatePayment: idLatePayment ?? this.idLatePayment,
    loanId: loanId ?? this.loanId,
    latePayment: latePayment ?? this.latePayment,
    cantOverdue: cantOverdue ?? this.cantOverdue,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  LatePaymentsTableData copyWithCompanion(LatePaymentsTableCompanion data) {
    return LatePaymentsTableData(
      idLatePayment: data.idLatePayment.present
          ? data.idLatePayment.value
          : this.idLatePayment,
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      latePayment: data.latePayment.present
          ? data.latePayment.value
          : this.latePayment,
      cantOverdue: data.cantOverdue.present
          ? data.cantOverdue.value
          : this.cantOverdue,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LatePaymentsTableData(')
          ..write('idLatePayment: $idLatePayment, ')
          ..write('loanId: $loanId, ')
          ..write('latePayment: $latePayment, ')
          ..write('cantOverdue: $cantOverdue, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    idLatePayment,
    loanId,
    latePayment,
    cantOverdue,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LatePaymentsTableData &&
          other.idLatePayment == this.idLatePayment &&
          other.loanId == this.loanId &&
          other.latePayment == this.latePayment &&
          other.cantOverdue == this.cantOverdue &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class LatePaymentsTableCompanion
    extends UpdateCompanion<LatePaymentsTableData> {
  final Value<String> idLatePayment;
  final Value<String> loanId;
  final Value<double> latePayment;
  final Value<int> cantOverdue;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const LatePaymentsTableCompanion({
    this.idLatePayment = const Value.absent(),
    this.loanId = const Value.absent(),
    this.latePayment = const Value.absent(),
    this.cantOverdue = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LatePaymentsTableCompanion.insert({
    required String idLatePayment,
    required String loanId,
    required double latePayment,
    required int cantOverdue,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : idLatePayment = Value(idLatePayment),
       loanId = Value(loanId),
       latePayment = Value(latePayment),
       cantOverdue = Value(cantOverdue),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<LatePaymentsTableData> custom({
    Expression<String>? idLatePayment,
    Expression<String>? loanId,
    Expression<double>? latePayment,
    Expression<int>? cantOverdue,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idLatePayment != null) 'id_late_payment': idLatePayment,
      if (loanId != null) 'loan_id': loanId,
      if (latePayment != null) 'late_payment': latePayment,
      if (cantOverdue != null) 'cant_overdue': cantOverdue,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LatePaymentsTableCompanion copyWith({
    Value<String>? idLatePayment,
    Value<String>? loanId,
    Value<double>? latePayment,
    Value<int>? cantOverdue,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return LatePaymentsTableCompanion(
      idLatePayment: idLatePayment ?? this.idLatePayment,
      loanId: loanId ?? this.loanId,
      latePayment: latePayment ?? this.latePayment,
      cantOverdue: cantOverdue ?? this.cantOverdue,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idLatePayment.present) {
      map['id_late_payment'] = Variable<String>(idLatePayment.value);
    }
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (latePayment.present) {
      map['late_payment'] = Variable<double>(latePayment.value);
    }
    if (cantOverdue.present) {
      map['cant_overdue'] = Variable<int>(cantOverdue.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LatePaymentsTableCompanion(')
          ..write('idLatePayment: $idLatePayment, ')
          ..write('loanId: $loanId, ')
          ..write('latePayment: $latePayment, ')
          ..write('cantOverdue: $cantOverdue, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DisbursementTableTable extends DisbursementTable
    with TableInfo<$DisbursementTableTable, DisbursementTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DisbursementTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _disbursementIdMeta = const VerificationMeta(
    'disbursementId',
  );
  @override
  late final GeneratedColumn<String> disbursementId = GeneratedColumn<String>(
    'disbursement_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorizeByMeta = const VerificationMeta(
    'authorizeBy',
  );
  @override
  late final GeneratedColumn<String> authorizeBy = GeneratedColumn<String>(
    'authorize_by',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _disbursementDateMeta = const VerificationMeta(
    'disbursementDate',
  );
  @override
  late final GeneratedColumn<DateTime> disbursementDate =
      GeneratedColumn<DateTime>(
        'disbursement_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _disbursementDestinationMeta =
      const VerificationMeta('disbursementDestination');
  @override
  late final GeneratedColumn<String> disbursementDestination =
      GeneratedColumn<String>(
        'disbursement_destination',
        aliasedName,
        false,
        additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 200),
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bankAccountIdMeta = const VerificationMeta(
    'bankAccountId',
  );
  @override
  late final GeneratedColumn<String> bankAccountId = GeneratedColumn<String>(
    'bank_account_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    disbursementId,
    authorizeBy,
    amount,
    disbursementDate,
    disbursementDestination,
    comment,
    bankAccountId,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'disbursement_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<DisbursementTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('disbursement_id')) {
      context.handle(
        _disbursementIdMeta,
        disbursementId.isAcceptableOrUnknown(
          data['disbursement_id']!,
          _disbursementIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_disbursementIdMeta);
    }
    if (data.containsKey('authorize_by')) {
      context.handle(
        _authorizeByMeta,
        authorizeBy.isAcceptableOrUnknown(
          data['authorize_by']!,
          _authorizeByMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_authorizeByMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('disbursement_date')) {
      context.handle(
        _disbursementDateMeta,
        disbursementDate.isAcceptableOrUnknown(
          data['disbursement_date']!,
          _disbursementDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_disbursementDateMeta);
    }
    if (data.containsKey('disbursement_destination')) {
      context.handle(
        _disbursementDestinationMeta,
        disbursementDestination.isAcceptableOrUnknown(
          data['disbursement_destination']!,
          _disbursementDestinationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_disbursementDestinationMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('bank_account_id')) {
      context.handle(
        _bankAccountIdMeta,
        bankAccountId.isAcceptableOrUnknown(
          data['bank_account_id']!,
          _bankAccountIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bankAccountIdMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {disbursementId};
  @override
  DisbursementTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DisbursementTableData(
      disbursementId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}disbursement_id'],
      )!,
      authorizeBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}authorize_by'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      disbursementDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}disbursement_date'],
      )!,
      disbursementDestination: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}disbursement_destination'],
      )!,
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      )!,
      bankAccountId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_account_id'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $DisbursementTableTable createAlias(String alias) {
    return $DisbursementTableTable(attachedDatabase, alias);
  }
}

class DisbursementTableData extends DataClass
    implements Insertable<DisbursementTableData> {
  final String disbursementId;
  final String authorizeBy;
  final double amount;
  final DateTime disbursementDate;
  final String disbursementDestination;
  final String comment;
  final String bankAccountId;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const DisbursementTableData({
    required this.disbursementId,
    required this.authorizeBy,
    required this.amount,
    required this.disbursementDate,
    required this.disbursementDestination,
    required this.comment,
    required this.bankAccountId,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['disbursement_id'] = Variable<String>(disbursementId);
    map['authorize_by'] = Variable<String>(authorizeBy);
    map['amount'] = Variable<double>(amount);
    map['disbursement_date'] = Variable<DateTime>(disbursementDate);
    map['disbursement_destination'] = Variable<String>(disbursementDestination);
    map['comment'] = Variable<String>(comment);
    map['bank_account_id'] = Variable<String>(bankAccountId);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  DisbursementTableCompanion toCompanion(bool nullToAbsent) {
    return DisbursementTableCompanion(
      disbursementId: Value(disbursementId),
      authorizeBy: Value(authorizeBy),
      amount: Value(amount),
      disbursementDate: Value(disbursementDate),
      disbursementDestination: Value(disbursementDestination),
      comment: Value(comment),
      bankAccountId: Value(bankAccountId),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory DisbursementTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DisbursementTableData(
      disbursementId: serializer.fromJson<String>(json['disbursementId']),
      authorizeBy: serializer.fromJson<String>(json['authorizeBy']),
      amount: serializer.fromJson<double>(json['amount']),
      disbursementDate: serializer.fromJson<DateTime>(json['disbursementDate']),
      disbursementDestination: serializer.fromJson<String>(
        json['disbursementDestination'],
      ),
      comment: serializer.fromJson<String>(json['comment']),
      bankAccountId: serializer.fromJson<String>(json['bankAccountId']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'disbursementId': serializer.toJson<String>(disbursementId),
      'authorizeBy': serializer.toJson<String>(authorizeBy),
      'amount': serializer.toJson<double>(amount),
      'disbursementDate': serializer.toJson<DateTime>(disbursementDate),
      'disbursementDestination': serializer.toJson<String>(
        disbursementDestination,
      ),
      'comment': serializer.toJson<String>(comment),
      'bankAccountId': serializer.toJson<String>(bankAccountId),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  DisbursementTableData copyWith({
    String? disbursementId,
    String? authorizeBy,
    double? amount,
    DateTime? disbursementDate,
    String? disbursementDestination,
    String? comment,
    String? bankAccountId,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => DisbursementTableData(
    disbursementId: disbursementId ?? this.disbursementId,
    authorizeBy: authorizeBy ?? this.authorizeBy,
    amount: amount ?? this.amount,
    disbursementDate: disbursementDate ?? this.disbursementDate,
    disbursementDestination:
        disbursementDestination ?? this.disbursementDestination,
    comment: comment ?? this.comment,
    bankAccountId: bankAccountId ?? this.bankAccountId,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  DisbursementTableData copyWithCompanion(DisbursementTableCompanion data) {
    return DisbursementTableData(
      disbursementId: data.disbursementId.present
          ? data.disbursementId.value
          : this.disbursementId,
      authorizeBy: data.authorizeBy.present
          ? data.authorizeBy.value
          : this.authorizeBy,
      amount: data.amount.present ? data.amount.value : this.amount,
      disbursementDate: data.disbursementDate.present
          ? data.disbursementDate.value
          : this.disbursementDate,
      disbursementDestination: data.disbursementDestination.present
          ? data.disbursementDestination.value
          : this.disbursementDestination,
      comment: data.comment.present ? data.comment.value : this.comment,
      bankAccountId: data.bankAccountId.present
          ? data.bankAccountId.value
          : this.bankAccountId,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DisbursementTableData(')
          ..write('disbursementId: $disbursementId, ')
          ..write('authorizeBy: $authorizeBy, ')
          ..write('amount: $amount, ')
          ..write('disbursementDate: $disbursementDate, ')
          ..write('disbursementDestination: $disbursementDestination, ')
          ..write('comment: $comment, ')
          ..write('bankAccountId: $bankAccountId, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    disbursementId,
    authorizeBy,
    amount,
    disbursementDate,
    disbursementDestination,
    comment,
    bankAccountId,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DisbursementTableData &&
          other.disbursementId == this.disbursementId &&
          other.authorizeBy == this.authorizeBy &&
          other.amount == this.amount &&
          other.disbursementDate == this.disbursementDate &&
          other.disbursementDestination == this.disbursementDestination &&
          other.comment == this.comment &&
          other.bankAccountId == this.bankAccountId &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class DisbursementTableCompanion
    extends UpdateCompanion<DisbursementTableData> {
  final Value<String> disbursementId;
  final Value<String> authorizeBy;
  final Value<double> amount;
  final Value<DateTime> disbursementDate;
  final Value<String> disbursementDestination;
  final Value<String> comment;
  final Value<String> bankAccountId;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const DisbursementTableCompanion({
    this.disbursementId = const Value.absent(),
    this.authorizeBy = const Value.absent(),
    this.amount = const Value.absent(),
    this.disbursementDate = const Value.absent(),
    this.disbursementDestination = const Value.absent(),
    this.comment = const Value.absent(),
    this.bankAccountId = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DisbursementTableCompanion.insert({
    required String disbursementId,
    required String authorizeBy,
    required double amount,
    required DateTime disbursementDate,
    required String disbursementDestination,
    required String comment,
    required String bankAccountId,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : disbursementId = Value(disbursementId),
       authorizeBy = Value(authorizeBy),
       amount = Value(amount),
       disbursementDate = Value(disbursementDate),
       disbursementDestination = Value(disbursementDestination),
       comment = Value(comment),
       bankAccountId = Value(bankAccountId),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<DisbursementTableData> custom({
    Expression<String>? disbursementId,
    Expression<String>? authorizeBy,
    Expression<double>? amount,
    Expression<DateTime>? disbursementDate,
    Expression<String>? disbursementDestination,
    Expression<String>? comment,
    Expression<String>? bankAccountId,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (disbursementId != null) 'disbursement_id': disbursementId,
      if (authorizeBy != null) 'authorize_by': authorizeBy,
      if (amount != null) 'amount': amount,
      if (disbursementDate != null) 'disbursement_date': disbursementDate,
      if (disbursementDestination != null)
        'disbursement_destination': disbursementDestination,
      if (comment != null) 'comment': comment,
      if (bankAccountId != null) 'bank_account_id': bankAccountId,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DisbursementTableCompanion copyWith({
    Value<String>? disbursementId,
    Value<String>? authorizeBy,
    Value<double>? amount,
    Value<DateTime>? disbursementDate,
    Value<String>? disbursementDestination,
    Value<String>? comment,
    Value<String>? bankAccountId,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return DisbursementTableCompanion(
      disbursementId: disbursementId ?? this.disbursementId,
      authorizeBy: authorizeBy ?? this.authorizeBy,
      amount: amount ?? this.amount,
      disbursementDate: disbursementDate ?? this.disbursementDate,
      disbursementDestination:
          disbursementDestination ?? this.disbursementDestination,
      comment: comment ?? this.comment,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (disbursementId.present) {
      map['disbursement_id'] = Variable<String>(disbursementId.value);
    }
    if (authorizeBy.present) {
      map['authorize_by'] = Variable<String>(authorizeBy.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (disbursementDate.present) {
      map['disbursement_date'] = Variable<DateTime>(disbursementDate.value);
    }
    if (disbursementDestination.present) {
      map['disbursement_destination'] = Variable<String>(
        disbursementDestination.value,
      );
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (bankAccountId.present) {
      map['bank_account_id'] = Variable<String>(bankAccountId.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DisbursementTableCompanion(')
          ..write('disbursementId: $disbursementId, ')
          ..write('authorizeBy: $authorizeBy, ')
          ..write('amount: $amount, ')
          ..write('disbursementDate: $disbursementDate, ')
          ..write('disbursementDestination: $disbursementDestination, ')
          ..write('comment: $comment, ')
          ..write('bankAccountId: $bankAccountId, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BankAccountTableTable extends BankAccountTable
    with TableInfo<$BankAccountTableTable, BankAccountTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BankAccountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bankAccountIdMeta = const VerificationMeta(
    'bankAccountId',
  );
  @override
  late final GeneratedColumn<String> bankAccountId = GeneratedColumn<String>(
    'bank_account_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _accountNumberMeta = const VerificationMeta(
    'accountNumber',
  );
  @override
  late final GeneratedColumn<String> accountNumber = GeneratedColumn<String>(
    'account_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bankIdMeta = const VerificationMeta('bankId');
  @override
  late final GeneratedColumn<String> bankId = GeneratedColumn<String>(
    'bank_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyIdMeta = const VerificationMeta(
    'currencyId',
  );
  @override
  late final GeneratedColumn<String> currencyId = GeneratedColumn<String>(
    'currency_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _accountTypeIdMeta = const VerificationMeta(
    'accountTypeId',
  );
  @override
  late final GeneratedColumn<String> accountTypeId = GeneratedColumn<String>(
    'account_type_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    bankAccountId,
    accountNumber,
    bankId,
    currencyId,
    accountTypeId,
    amount,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bank_account_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<BankAccountTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bank_account_id')) {
      context.handle(
        _bankAccountIdMeta,
        bankAccountId.isAcceptableOrUnknown(
          data['bank_account_id']!,
          _bankAccountIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bankAccountIdMeta);
    }
    if (data.containsKey('account_number')) {
      context.handle(
        _accountNumberMeta,
        accountNumber.isAcceptableOrUnknown(
          data['account_number']!,
          _accountNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_accountNumberMeta);
    }
    if (data.containsKey('bank_id')) {
      context.handle(
        _bankIdMeta,
        bankId.isAcceptableOrUnknown(data['bank_id']!, _bankIdMeta),
      );
    } else if (isInserting) {
      context.missing(_bankIdMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
        _currencyIdMeta,
        currencyId.isAcceptableOrUnknown(data['currency_id']!, _currencyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('account_type_id')) {
      context.handle(
        _accountTypeIdMeta,
        accountTypeId.isAcceptableOrUnknown(
          data['account_type_id']!,
          _accountTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_accountTypeIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bankAccountId};
  @override
  BankAccountTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BankAccountTableData(
      bankAccountId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_account_id'],
      )!,
      accountNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}account_number'],
      )!,
      bankId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_id'],
      )!,
      currencyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_id'],
      )!,
      accountTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}account_type_id'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $BankAccountTableTable createAlias(String alias) {
    return $BankAccountTableTable(attachedDatabase, alias);
  }
}

class BankAccountTableData extends DataClass
    implements Insertable<BankAccountTableData> {
  final String bankAccountId;
  final String accountNumber;
  final String bankId;
  final String currencyId;
  final String accountTypeId;
  final double amount;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const BankAccountTableData({
    required this.bankAccountId,
    required this.accountNumber,
    required this.bankId,
    required this.currencyId,
    required this.accountTypeId,
    required this.amount,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['bank_account_id'] = Variable<String>(bankAccountId);
    map['account_number'] = Variable<String>(accountNumber);
    map['bank_id'] = Variable<String>(bankId);
    map['currency_id'] = Variable<String>(currencyId);
    map['account_type_id'] = Variable<String>(accountTypeId);
    map['amount'] = Variable<double>(amount);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  BankAccountTableCompanion toCompanion(bool nullToAbsent) {
    return BankAccountTableCompanion(
      bankAccountId: Value(bankAccountId),
      accountNumber: Value(accountNumber),
      bankId: Value(bankId),
      currencyId: Value(currencyId),
      accountTypeId: Value(accountTypeId),
      amount: Value(amount),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory BankAccountTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BankAccountTableData(
      bankAccountId: serializer.fromJson<String>(json['bankAccountId']),
      accountNumber: serializer.fromJson<String>(json['accountNumber']),
      bankId: serializer.fromJson<String>(json['bankId']),
      currencyId: serializer.fromJson<String>(json['currencyId']),
      accountTypeId: serializer.fromJson<String>(json['accountTypeId']),
      amount: serializer.fromJson<double>(json['amount']),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bankAccountId': serializer.toJson<String>(bankAccountId),
      'accountNumber': serializer.toJson<String>(accountNumber),
      'bankId': serializer.toJson<String>(bankId),
      'currencyId': serializer.toJson<String>(currencyId),
      'accountTypeId': serializer.toJson<String>(accountTypeId),
      'amount': serializer.toJson<double>(amount),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  BankAccountTableData copyWith({
    String? bankAccountId,
    String? accountNumber,
    String? bankId,
    String? currencyId,
    String? accountTypeId,
    double? amount,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => BankAccountTableData(
    bankAccountId: bankAccountId ?? this.bankAccountId,
    accountNumber: accountNumber ?? this.accountNumber,
    bankId: bankId ?? this.bankId,
    currencyId: currencyId ?? this.currencyId,
    accountTypeId: accountTypeId ?? this.accountTypeId,
    amount: amount ?? this.amount,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  BankAccountTableData copyWithCompanion(BankAccountTableCompanion data) {
    return BankAccountTableData(
      bankAccountId: data.bankAccountId.present
          ? data.bankAccountId.value
          : this.bankAccountId,
      accountNumber: data.accountNumber.present
          ? data.accountNumber.value
          : this.accountNumber,
      bankId: data.bankId.present ? data.bankId.value : this.bankId,
      currencyId: data.currencyId.present
          ? data.currencyId.value
          : this.currencyId,
      accountTypeId: data.accountTypeId.present
          ? data.accountTypeId.value
          : this.accountTypeId,
      amount: data.amount.present ? data.amount.value : this.amount,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BankAccountTableData(')
          ..write('bankAccountId: $bankAccountId, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('bankId: $bankId, ')
          ..write('currencyId: $currencyId, ')
          ..write('accountTypeId: $accountTypeId, ')
          ..write('amount: $amount, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    bankAccountId,
    accountNumber,
    bankId,
    currencyId,
    accountTypeId,
    amount,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BankAccountTableData &&
          other.bankAccountId == this.bankAccountId &&
          other.accountNumber == this.accountNumber &&
          other.bankId == this.bankId &&
          other.currencyId == this.currencyId &&
          other.accountTypeId == this.accountTypeId &&
          other.amount == this.amount &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class BankAccountTableCompanion extends UpdateCompanion<BankAccountTableData> {
  final Value<String> bankAccountId;
  final Value<String> accountNumber;
  final Value<String> bankId;
  final Value<String> currencyId;
  final Value<String> accountTypeId;
  final Value<double> amount;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const BankAccountTableCompanion({
    this.bankAccountId = const Value.absent(),
    this.accountNumber = const Value.absent(),
    this.bankId = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.accountTypeId = const Value.absent(),
    this.amount = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BankAccountTableCompanion.insert({
    required String bankAccountId,
    required String accountNumber,
    required String bankId,
    required String currencyId,
    required String accountTypeId,
    required double amount,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : bankAccountId = Value(bankAccountId),
       accountNumber = Value(accountNumber),
       bankId = Value(bankId),
       currencyId = Value(currencyId),
       accountTypeId = Value(accountTypeId),
       amount = Value(amount),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<BankAccountTableData> custom({
    Expression<String>? bankAccountId,
    Expression<String>? accountNumber,
    Expression<String>? bankId,
    Expression<String>? currencyId,
    Expression<String>? accountTypeId,
    Expression<double>? amount,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (bankAccountId != null) 'bank_account_id': bankAccountId,
      if (accountNumber != null) 'account_number': accountNumber,
      if (bankId != null) 'bank_id': bankId,
      if (currencyId != null) 'currency_id': currencyId,
      if (accountTypeId != null) 'account_type_id': accountTypeId,
      if (amount != null) 'amount': amount,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BankAccountTableCompanion copyWith({
    Value<String>? bankAccountId,
    Value<String>? accountNumber,
    Value<String>? bankId,
    Value<String>? currencyId,
    Value<String>? accountTypeId,
    Value<double>? amount,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return BankAccountTableCompanion(
      bankAccountId: bankAccountId ?? this.bankAccountId,
      accountNumber: accountNumber ?? this.accountNumber,
      bankId: bankId ?? this.bankId,
      currencyId: currencyId ?? this.currencyId,
      accountTypeId: accountTypeId ?? this.accountTypeId,
      amount: amount ?? this.amount,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bankAccountId.present) {
      map['bank_account_id'] = Variable<String>(bankAccountId.value);
    }
    if (accountNumber.present) {
      map['account_number'] = Variable<String>(accountNumber.value);
    }
    if (bankId.present) {
      map['bank_id'] = Variable<String>(bankId.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (accountTypeId.present) {
      map['account_type_id'] = Variable<String>(accountTypeId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BankAccountTableCompanion(')
          ..write('bankAccountId: $bankAccountId, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('bankId: $bankId, ')
          ..write('currencyId: $currencyId, ')
          ..write('accountTypeId: $accountTypeId, ')
          ..write('amount: $amount, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CurrencyTableTable extends CurrencyTable
    with TableInfo<$CurrencyTableTable, CurrencyTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrencyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _currencyIdMeta = const VerificationMeta(
    'currencyId',
  );
  @override
  late final GeneratedColumn<String> currencyId = GeneratedColumn<String>(
    'currency_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyTypeMeta = const VerificationMeta(
    'currencyType',
  );
  @override
  late final GeneratedColumn<String> currencyType = GeneratedColumn<String>(
    'currency_type',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyDescriptionMeta =
      const VerificationMeta('currencyDescription');
  @override
  late final GeneratedColumn<String> currencyDescription =
      GeneratedColumn<String>(
        'currency_description',
        aliasedName,
        false,
        additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    currencyId,
    currencyType,
    currencyDescription,
    companyId,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'currency_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CurrencyTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('currency_id')) {
      context.handle(
        _currencyIdMeta,
        currencyId.isAcceptableOrUnknown(data['currency_id']!, _currencyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_type')) {
      context.handle(
        _currencyTypeMeta,
        currencyType.isAcceptableOrUnknown(
          data['currency_type']!,
          _currencyTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currencyTypeMeta);
    }
    if (data.containsKey('currency_description')) {
      context.handle(
        _currencyDescriptionMeta,
        currencyDescription.isAcceptableOrUnknown(
          data['currency_description']!,
          _currencyDescriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currencyDescriptionMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {currencyId};
  @override
  CurrencyTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurrencyTableData(
      currencyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_id'],
      )!,
      currencyType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_type'],
      )!,
      currencyDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_description'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $CurrencyTableTable createAlias(String alias) {
    return $CurrencyTableTable(attachedDatabase, alias);
  }
}

class CurrencyTableData extends DataClass
    implements Insertable<CurrencyTableData> {
  final String currencyId;
  final String currencyType;
  final String currencyDescription;
  final String companyId;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const CurrencyTableData({
    required this.currencyId,
    required this.currencyType,
    required this.currencyDescription,
    required this.companyId,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['currency_id'] = Variable<String>(currencyId);
    map['currency_type'] = Variable<String>(currencyType);
    map['currency_description'] = Variable<String>(currencyDescription);
    map['company_id'] = Variable<String>(companyId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  CurrencyTableCompanion toCompanion(bool nullToAbsent) {
    return CurrencyTableCompanion(
      currencyId: Value(currencyId),
      currencyType: Value(currencyType),
      currencyDescription: Value(currencyDescription),
      companyId: Value(companyId),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory CurrencyTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrencyTableData(
      currencyId: serializer.fromJson<String>(json['currencyId']),
      currencyType: serializer.fromJson<String>(json['currencyType']),
      currencyDescription: serializer.fromJson<String>(
        json['currencyDescription'],
      ),
      companyId: serializer.fromJson<String>(json['companyId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'currencyId': serializer.toJson<String>(currencyId),
      'currencyType': serializer.toJson<String>(currencyType),
      'currencyDescription': serializer.toJson<String>(currencyDescription),
      'companyId': serializer.toJson<String>(companyId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  CurrencyTableData copyWith({
    String? currencyId,
    String? currencyType,
    String? currencyDescription,
    String? companyId,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => CurrencyTableData(
    currencyId: currencyId ?? this.currencyId,
    currencyType: currencyType ?? this.currencyType,
    currencyDescription: currencyDescription ?? this.currencyDescription,
    companyId: companyId ?? this.companyId,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  CurrencyTableData copyWithCompanion(CurrencyTableCompanion data) {
    return CurrencyTableData(
      currencyId: data.currencyId.present
          ? data.currencyId.value
          : this.currencyId,
      currencyType: data.currencyType.present
          ? data.currencyType.value
          : this.currencyType,
      currencyDescription: data.currencyDescription.present
          ? data.currencyDescription.value
          : this.currencyDescription,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CurrencyTableData(')
          ..write('currencyId: $currencyId, ')
          ..write('currencyType: $currencyType, ')
          ..write('currencyDescription: $currencyDescription, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    currencyId,
    currencyType,
    currencyDescription,
    companyId,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrencyTableData &&
          other.currencyId == this.currencyId &&
          other.currencyType == this.currencyType &&
          other.currencyDescription == this.currencyDescription &&
          other.companyId == this.companyId &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class CurrencyTableCompanion extends UpdateCompanion<CurrencyTableData> {
  final Value<String> currencyId;
  final Value<String> currencyType;
  final Value<String> currencyDescription;
  final Value<String> companyId;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const CurrencyTableCompanion({
    this.currencyId = const Value.absent(),
    this.currencyType = const Value.absent(),
    this.currencyDescription = const Value.absent(),
    this.companyId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CurrencyTableCompanion.insert({
    required String currencyId,
    required String currencyType,
    required String currencyDescription,
    required String companyId,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : currencyId = Value(currencyId),
       currencyType = Value(currencyType),
       currencyDescription = Value(currencyDescription),
       companyId = Value(companyId),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<CurrencyTableData> custom({
    Expression<String>? currencyId,
    Expression<String>? currencyType,
    Expression<String>? currencyDescription,
    Expression<String>? companyId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyType != null) 'currency_type': currencyType,
      if (currencyDescription != null)
        'currency_description': currencyDescription,
      if (companyId != null) 'company_id': companyId,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CurrencyTableCompanion copyWith({
    Value<String>? currencyId,
    Value<String>? currencyType,
    Value<String>? currencyDescription,
    Value<String>? companyId,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return CurrencyTableCompanion(
      currencyId: currencyId ?? this.currencyId,
      currencyType: currencyType ?? this.currencyType,
      currencyDescription: currencyDescription ?? this.currencyDescription,
      companyId: companyId ?? this.companyId,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (currencyType.present) {
      map['currency_type'] = Variable<String>(currencyType.value);
    }
    if (currencyDescription.present) {
      map['currency_description'] = Variable<String>(currencyDescription.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrencyTableCompanion(')
          ..write('currencyId: $currencyId, ')
          ..write('currencyType: $currencyType, ')
          ..write('currencyDescription: $currencyDescription, ')
          ..write('companyId: $companyId, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompanyTableTable extends CompanyTable
    with TableInfo<$CompanyTableTable, CompanyTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _membershipIdMeta = const VerificationMeta(
    'membershipId',
  );
  @override
  late final GeneratedColumn<String> membershipId = GeneratedColumn<String>(
    'membership_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sloganMeta = const VerificationMeta('slogan');
  @override
  late final GeneratedColumn<String> slogan = GeneratedColumn<String>(
    'slogan',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 180),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rncMeta = const VerificationMeta('rnc');
  @override
  late final GeneratedColumn<int> rnc = GeneratedColumn<int>(
    'rnc',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 12),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<String> logo = GeneratedColumn<String>(
    'logo',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isFinancialMeta = const VerificationMeta(
    'isFinancial',
  );
  @override
  late final GeneratedColumn<bool> isFinancial = GeneratedColumn<bool>(
    'is_financial',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_financial" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    companyId,
    membershipId,
    name,
    slogan,
    rnc,
    address,
    phone,
    email,
    logo,
    isFinancial,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompanyTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('membership_id')) {
      context.handle(
        _membershipIdMeta,
        membershipId.isAcceptableOrUnknown(
          data['membership_id']!,
          _membershipIdMeta,
        ),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('slogan')) {
      context.handle(
        _sloganMeta,
        slogan.isAcceptableOrUnknown(data['slogan']!, _sloganMeta),
      );
    }
    if (data.containsKey('rnc')) {
      context.handle(
        _rncMeta,
        rnc.isAcceptableOrUnknown(data['rnc']!, _rncMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('logo')) {
      context.handle(
        _logoMeta,
        logo.isAcceptableOrUnknown(data['logo']!, _logoMeta),
      );
    }
    if (data.containsKey('is_financial')) {
      context.handle(
        _isFinancialMeta,
        isFinancial.isAcceptableOrUnknown(
          data['is_financial']!,
          _isFinancialMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_isFinancialMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {companyId};
  @override
  CompanyTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyTableData(
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      membershipId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}membership_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      slogan: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slogan'],
      ),
      rnc: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rnc'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      logo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}logo'],
      ),
      isFinancial: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_financial'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $CompanyTableTable createAlias(String alias) {
    return $CompanyTableTable(attachedDatabase, alias);
  }
}

class CompanyTableData extends DataClass
    implements Insertable<CompanyTableData> {
  final String companyId;
  final String? membershipId;
  final String name;
  final String? slogan;
  final int? rnc;
  final String? address;
  final String? phone;
  final String? email;
  final String? logo;
  final bool isFinancial;
  final bool isActive;
  final DateTime createdDate;
  final String? userId;
  const CompanyTableData({
    required this.companyId,
    this.membershipId,
    required this.name,
    this.slogan,
    this.rnc,
    this.address,
    this.phone,
    this.email,
    this.logo,
    required this.isFinancial,
    required this.isActive,
    required this.createdDate,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['company_id'] = Variable<String>(companyId);
    if (!nullToAbsent || membershipId != null) {
      map['membership_id'] = Variable<String>(membershipId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || slogan != null) {
      map['slogan'] = Variable<String>(slogan);
    }
    if (!nullToAbsent || rnc != null) {
      map['rnc'] = Variable<int>(rnc);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || logo != null) {
      map['logo'] = Variable<String>(logo);
    }
    map['is_financial'] = Variable<bool>(isFinancial);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  CompanyTableCompanion toCompanion(bool nullToAbsent) {
    return CompanyTableCompanion(
      companyId: Value(companyId),
      membershipId: membershipId == null && nullToAbsent
          ? const Value.absent()
          : Value(membershipId),
      name: Value(name),
      slogan: slogan == null && nullToAbsent
          ? const Value.absent()
          : Value(slogan),
      rnc: rnc == null && nullToAbsent ? const Value.absent() : Value(rnc),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      logo: logo == null && nullToAbsent ? const Value.absent() : Value(logo),
      isFinancial: Value(isFinancial),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory CompanyTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyTableData(
      companyId: serializer.fromJson<String>(json['companyId']),
      membershipId: serializer.fromJson<String?>(json['membershipId']),
      name: serializer.fromJson<String>(json['name']),
      slogan: serializer.fromJson<String?>(json['slogan']),
      rnc: serializer.fromJson<int?>(json['rnc']),
      address: serializer.fromJson<String?>(json['address']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      logo: serializer.fromJson<String?>(json['logo']),
      isFinancial: serializer.fromJson<bool>(json['isFinancial']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'companyId': serializer.toJson<String>(companyId),
      'membershipId': serializer.toJson<String?>(membershipId),
      'name': serializer.toJson<String>(name),
      'slogan': serializer.toJson<String?>(slogan),
      'rnc': serializer.toJson<int?>(rnc),
      'address': serializer.toJson<String?>(address),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'logo': serializer.toJson<String?>(logo),
      'isFinancial': serializer.toJson<bool>(isFinancial),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  CompanyTableData copyWith({
    String? companyId,
    Value<String?> membershipId = const Value.absent(),
    String? name,
    Value<String?> slogan = const Value.absent(),
    Value<int?> rnc = const Value.absent(),
    Value<String?> address = const Value.absent(),
    Value<String?> phone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> logo = const Value.absent(),
    bool? isFinancial,
    bool? isActive,
    DateTime? createdDate,
    Value<String?> userId = const Value.absent(),
  }) => CompanyTableData(
    companyId: companyId ?? this.companyId,
    membershipId: membershipId.present ? membershipId.value : this.membershipId,
    name: name ?? this.name,
    slogan: slogan.present ? slogan.value : this.slogan,
    rnc: rnc.present ? rnc.value : this.rnc,
    address: address.present ? address.value : this.address,
    phone: phone.present ? phone.value : this.phone,
    email: email.present ? email.value : this.email,
    logo: logo.present ? logo.value : this.logo,
    isFinancial: isFinancial ?? this.isFinancial,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId.present ? userId.value : this.userId,
  );
  CompanyTableData copyWithCompanion(CompanyTableCompanion data) {
    return CompanyTableData(
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      membershipId: data.membershipId.present
          ? data.membershipId.value
          : this.membershipId,
      name: data.name.present ? data.name.value : this.name,
      slogan: data.slogan.present ? data.slogan.value : this.slogan,
      rnc: data.rnc.present ? data.rnc.value : this.rnc,
      address: data.address.present ? data.address.value : this.address,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      logo: data.logo.present ? data.logo.value : this.logo,
      isFinancial: data.isFinancial.present
          ? data.isFinancial.value
          : this.isFinancial,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTableData(')
          ..write('companyId: $companyId, ')
          ..write('membershipId: $membershipId, ')
          ..write('name: $name, ')
          ..write('slogan: $slogan, ')
          ..write('rnc: $rnc, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('logo: $logo, ')
          ..write('isFinancial: $isFinancial, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    companyId,
    membershipId,
    name,
    slogan,
    rnc,
    address,
    phone,
    email,
    logo,
    isFinancial,
    isActive,
    createdDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyTableData &&
          other.companyId == this.companyId &&
          other.membershipId == this.membershipId &&
          other.name == this.name &&
          other.slogan == this.slogan &&
          other.rnc == this.rnc &&
          other.address == this.address &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.logo == this.logo &&
          other.isFinancial == this.isFinancial &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class CompanyTableCompanion extends UpdateCompanion<CompanyTableData> {
  final Value<String> companyId;
  final Value<String?> membershipId;
  final Value<String> name;
  final Value<String?> slogan;
  final Value<int?> rnc;
  final Value<String?> address;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> logo;
  final Value<bool> isFinancial;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String?> userId;
  final Value<int> rowid;
  const CompanyTableCompanion({
    this.companyId = const Value.absent(),
    this.membershipId = const Value.absent(),
    this.name = const Value.absent(),
    this.slogan = const Value.absent(),
    this.rnc = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.logo = const Value.absent(),
    this.isFinancial = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompanyTableCompanion.insert({
    required String companyId,
    this.membershipId = const Value.absent(),
    required String name,
    this.slogan = const Value.absent(),
    this.rnc = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.logo = const Value.absent(),
    required bool isFinancial,
    required bool isActive,
    required DateTime createdDate,
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : companyId = Value(companyId),
       name = Value(name),
       isFinancial = Value(isFinancial),
       isActive = Value(isActive),
       createdDate = Value(createdDate);
  static Insertable<CompanyTableData> custom({
    Expression<String>? companyId,
    Expression<String>? membershipId,
    Expression<String>? name,
    Expression<String>? slogan,
    Expression<int>? rnc,
    Expression<String>? address,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? logo,
    Expression<bool>? isFinancial,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'company_id': companyId,
      if (membershipId != null) 'membership_id': membershipId,
      if (name != null) 'name': name,
      if (slogan != null) 'slogan': slogan,
      if (rnc != null) 'rnc': rnc,
      if (address != null) 'address': address,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (logo != null) 'logo': logo,
      if (isFinancial != null) 'is_financial': isFinancial,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompanyTableCompanion copyWith({
    Value<String>? companyId,
    Value<String?>? membershipId,
    Value<String>? name,
    Value<String?>? slogan,
    Value<int?>? rnc,
    Value<String?>? address,
    Value<String?>? phone,
    Value<String?>? email,
    Value<String?>? logo,
    Value<bool>? isFinancial,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String?>? userId,
    Value<int>? rowid,
  }) {
    return CompanyTableCompanion(
      companyId: companyId ?? this.companyId,
      membershipId: membershipId ?? this.membershipId,
      name: name ?? this.name,
      slogan: slogan ?? this.slogan,
      rnc: rnc ?? this.rnc,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      logo: logo ?? this.logo,
      isFinancial: isFinancial ?? this.isFinancial,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (membershipId.present) {
      map['membership_id'] = Variable<String>(membershipId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (slogan.present) {
      map['slogan'] = Variable<String>(slogan.value);
    }
    if (rnc.present) {
      map['rnc'] = Variable<int>(rnc.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (logo.present) {
      map['logo'] = Variable<String>(logo.value);
    }
    if (isFinancial.present) {
      map['is_financial'] = Variable<bool>(isFinancial.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('membershipId: $membershipId, ')
          ..write('name: $name, ')
          ..write('slogan: $slogan, ')
          ..write('rnc: $rnc, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('logo: $logo, ')
          ..write('isFinancial: $isFinancial, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MembershipTableTable extends MembershipTable
    with TableInfo<$MembershipTableTable, MembershipTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MembershipTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _membershipIdMeta = const VerificationMeta(
    'membershipId',
  );
  @override
  late final GeneratedColumn<String> membershipId = GeneratedColumn<String>(
    'membership_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    membershipId,
    name,
    description,
    price,
    isActive,
    createdDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'membership_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MembershipTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('membership_id')) {
      context.handle(
        _membershipIdMeta,
        membershipId.isAcceptableOrUnknown(
          data['membership_id']!,
          _membershipIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_membershipIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {membershipId};
  @override
  MembershipTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MembershipTableData(
      membershipId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}membership_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
    );
  }

  @override
  $MembershipTableTable createAlias(String alias) {
    return $MembershipTableTable(attachedDatabase, alias);
  }
}

class MembershipTableData extends DataClass
    implements Insertable<MembershipTableData> {
  final String membershipId;
  final String name;
  final String description;
  final double price;
  final bool isActive;
  final DateTime createdDate;
  const MembershipTableData({
    required this.membershipId,
    required this.name,
    required this.description,
    required this.price,
    required this.isActive,
    required this.createdDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['membership_id'] = Variable<String>(membershipId);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['price'] = Variable<double>(price);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  MembershipTableCompanion toCompanion(bool nullToAbsent) {
    return MembershipTableCompanion(
      membershipId: Value(membershipId),
      name: Value(name),
      description: Value(description),
      price: Value(price),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
    );
  }

  factory MembershipTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MembershipTableData(
      membershipId: serializer.fromJson<String>(json['membershipId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      price: serializer.fromJson<double>(json['price']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'membershipId': serializer.toJson<String>(membershipId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'price': serializer.toJson<double>(price),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  MembershipTableData copyWith({
    String? membershipId,
    String? name,
    String? description,
    double? price,
    bool? isActive,
    DateTime? createdDate,
  }) => MembershipTableData(
    membershipId: membershipId ?? this.membershipId,
    name: name ?? this.name,
    description: description ?? this.description,
    price: price ?? this.price,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
  );
  MembershipTableData copyWithCompanion(MembershipTableCompanion data) {
    return MembershipTableData(
      membershipId: data.membershipId.present
          ? data.membershipId.value
          : this.membershipId,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      price: data.price.present ? data.price.value : this.price,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MembershipTableData(')
          ..write('membershipId: $membershipId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    membershipId,
    name,
    description,
    price,
    isActive,
    createdDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MembershipTableData &&
          other.membershipId == this.membershipId &&
          other.name == this.name &&
          other.description == this.description &&
          other.price == this.price &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate);
}

class MembershipTableCompanion extends UpdateCompanion<MembershipTableData> {
  final Value<String> membershipId;
  final Value<String> name;
  final Value<String> description;
  final Value<double> price;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<int> rowid;
  const MembershipTableCompanion({
    this.membershipId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MembershipTableCompanion.insert({
    required String membershipId,
    required String name,
    required String description,
    required double price,
    required bool isActive,
    required DateTime createdDate,
    this.rowid = const Value.absent(),
  }) : membershipId = Value(membershipId),
       name = Value(name),
       description = Value(description),
       price = Value(price),
       isActive = Value(isActive),
       createdDate = Value(createdDate);
  static Insertable<MembershipTableData> custom({
    Expression<String>? membershipId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<double>? price,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (membershipId != null) 'membership_id': membershipId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MembershipTableCompanion copyWith({
    Value<String>? membershipId,
    Value<String>? name,
    Value<String>? description,
    Value<double>? price,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<int>? rowid,
  }) {
    return MembershipTableCompanion(
      membershipId: membershipId ?? this.membershipId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (membershipId.present) {
      map['membership_id'] = Variable<String>(membershipId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MembershipTableCompanion(')
          ..write('membershipId: $membershipId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProvincesTableTable extends ProvincesTable
    with TableInfo<$ProvincesTableTable, ProvincesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProvincesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _provinceIdMeta = const VerificationMeta(
    'provinceId',
  );
  @override
  late final GeneratedColumn<String> provinceId = GeneratedColumn<String>(
    'province_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _provinceNameMeta = const VerificationMeta(
    'provinceName',
  );
  @override
  late final GeneratedColumn<String> provinceName = GeneratedColumn<String>(
    'province_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    provinceId,
    provinceName,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'provinces_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProvincesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('province_id')) {
      context.handle(
        _provinceIdMeta,
        provinceId.isAcceptableOrUnknown(data['province_id']!, _provinceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_provinceIdMeta);
    }
    if (data.containsKey('province_name')) {
      context.handle(
        _provinceNameMeta,
        provinceName.isAcceptableOrUnknown(
          data['province_name']!,
          _provinceNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_provinceNameMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {provinceId};
  @override
  ProvincesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProvincesTableData(
      provinceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}province_id'],
      )!,
      provinceName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}province_name'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $ProvincesTableTable createAlias(String alias) {
    return $ProvincesTableTable(attachedDatabase, alias);
  }
}

class ProvincesTableData extends DataClass
    implements Insertable<ProvincesTableData> {
  final String provinceId;
  final String provinceName;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const ProvincesTableData({
    required this.provinceId,
    required this.provinceName,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['province_id'] = Variable<String>(provinceId);
    map['province_name'] = Variable<String>(provinceName);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  ProvincesTableCompanion toCompanion(bool nullToAbsent) {
    return ProvincesTableCompanion(
      provinceId: Value(provinceId),
      provinceName: Value(provinceName),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory ProvincesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProvincesTableData(
      provinceId: serializer.fromJson<String>(json['provinceId']),
      provinceName: serializer.fromJson<String>(json['provinceName']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'provinceId': serializer.toJson<String>(provinceId),
      'provinceName': serializer.toJson<String>(provinceName),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  ProvincesTableData copyWith({
    String? provinceId,
    String? provinceName,
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => ProvincesTableData(
    provinceId: provinceId ?? this.provinceId,
    provinceName: provinceName ?? this.provinceName,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  ProvincesTableData copyWithCompanion(ProvincesTableCompanion data) {
    return ProvincesTableData(
      provinceId: data.provinceId.present
          ? data.provinceId.value
          : this.provinceId,
      provinceName: data.provinceName.present
          ? data.provinceName.value
          : this.provinceName,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProvincesTableData(')
          ..write('provinceId: $provinceId, ')
          ..write('provinceName: $provinceName, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(provinceId, provinceName, isActive, createdDate, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProvincesTableData &&
          other.provinceId == this.provinceId &&
          other.provinceName == this.provinceName &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class ProvincesTableCompanion extends UpdateCompanion<ProvincesTableData> {
  final Value<String> provinceId;
  final Value<String> provinceName;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const ProvincesTableCompanion({
    this.provinceId = const Value.absent(),
    this.provinceName = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProvincesTableCompanion.insert({
    required String provinceId,
    required String provinceName,
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : provinceId = Value(provinceId),
       provinceName = Value(provinceName),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<ProvincesTableData> custom({
    Expression<String>? provinceId,
    Expression<String>? provinceName,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (provinceId != null) 'province_id': provinceId,
      if (provinceName != null) 'province_name': provinceName,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProvincesTableCompanion copyWith({
    Value<String>? provinceId,
    Value<String>? provinceName,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return ProvincesTableCompanion(
      provinceId: provinceId ?? this.provinceId,
      provinceName: provinceName ?? this.provinceName,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (provinceId.present) {
      map['province_id'] = Variable<String>(provinceId.value);
    }
    if (provinceName.present) {
      map['province_name'] = Variable<String>(provinceName.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProvincesTableCompanion(')
          ..write('provinceId: $provinceId, ')
          ..write('provinceName: $provinceName, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GenderTableTable extends GenderTable
    with TableInfo<$GenderTableTable, GenderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GenderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idGenderMeta = const VerificationMeta(
    'idGender',
  );
  @override
  late final GeneratedColumn<String> idGender = GeneratedColumn<String>(
    'id_gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idGender,
    description,
    isActive,
    createdDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gender_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GenderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_gender')) {
      context.handle(
        _idGenderMeta,
        idGender.isAcceptableOrUnknown(data['id_gender']!, _idGenderMeta),
      );
    } else if (isInserting) {
      context.missing(_idGenderMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idGender};
  @override
  GenderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GenderTableData(
      idGender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id_gender'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
    );
  }

  @override
  $GenderTableTable createAlias(String alias) {
    return $GenderTableTable(attachedDatabase, alias);
  }
}

class GenderTableData extends DataClass implements Insertable<GenderTableData> {
  final String idGender;
  final String? description;
  final bool isActive;
  final DateTime createdDate;
  final String userId;
  const GenderTableData({
    required this.idGender,
    this.description,
    required this.isActive,
    required this.createdDate,
    required this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_gender'] = Variable<String>(idGender);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  GenderTableCompanion toCompanion(bool nullToAbsent) {
    return GenderTableCompanion(
      idGender: Value(idGender),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
      userId: Value(userId),
    );
  }

  factory GenderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GenderTableData(
      idGender: serializer.fromJson<String>(json['idGender']),
      description: serializer.fromJson<String?>(json['description']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idGender': serializer.toJson<String>(idGender),
      'description': serializer.toJson<String?>(description),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'userId': serializer.toJson<String>(userId),
    };
  }

  GenderTableData copyWith({
    String? idGender,
    Value<String?> description = const Value.absent(),
    bool? isActive,
    DateTime? createdDate,
    String? userId,
  }) => GenderTableData(
    idGender: idGender ?? this.idGender,
    description: description.present ? description.value : this.description,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
    userId: userId ?? this.userId,
  );
  GenderTableData copyWithCompanion(GenderTableCompanion data) {
    return GenderTableData(
      idGender: data.idGender.present ? data.idGender.value : this.idGender,
      description: data.description.present
          ? data.description.value
          : this.description,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GenderTableData(')
          ..write('idGender: $idGender, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(idGender, description, isActive, createdDate, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GenderTableData &&
          other.idGender == this.idGender &&
          other.description == this.description &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate &&
          other.userId == this.userId);
}

class GenderTableCompanion extends UpdateCompanion<GenderTableData> {
  final Value<String> idGender;
  final Value<String?> description;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<String> userId;
  final Value<int> rowid;
  const GenderTableCompanion({
    this.idGender = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GenderTableCompanion.insert({
    required String idGender,
    this.description = const Value.absent(),
    required bool isActive,
    required DateTime createdDate,
    required String userId,
    this.rowid = const Value.absent(),
  }) : idGender = Value(idGender),
       isActive = Value(isActive),
       createdDate = Value(createdDate),
       userId = Value(userId);
  static Insertable<GenderTableData> custom({
    Expression<String>? idGender,
    Expression<String>? description,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idGender != null) 'id_gender': idGender,
      if (description != null) 'description': description,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GenderTableCompanion copyWith({
    Value<String>? idGender,
    Value<String?>? description,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<String>? userId,
    Value<int>? rowid,
  }) {
    return GenderTableCompanion(
      idGender: idGender ?? this.idGender,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idGender.present) {
      map['id_gender'] = Variable<String>(idGender.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GenderTableCompanion(')
          ..write('idGender: $idGender, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AspNetUsersProfileTableTable extends AspNetUsersProfileTable
    with TableInfo<$AspNetUsersProfileTableTable, AspNetUsersProfileTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AspNetUsersProfileTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _profileIdMeta = const VerificationMeta(
    'profileId',
  );
  @override
  late final GeneratedColumn<String> profileId = GeneratedColumn<String>(
    'profile_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 450),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdDateMeta = const VerificationMeta(
    'createdDate',
  );
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
    'created_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDate,
  );
  @override
  List<GeneratedColumn> get $columns => [
    profileId,
    userId,
    firstName,
    lastName,
    email,
    phone,
    isActive,
    createdDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'asp_net_users_profile_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AspNetUsersProfileTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('profile_id')) {
      context.handle(
        _profileIdMeta,
        profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta),
      );
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_date')) {
      context.handle(
        _createdDateMeta,
        createdDate.isAcceptableOrUnknown(
          data['created_date']!,
          _createdDateMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId};
  @override
  AspNetUsersProfileTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AspNetUsersProfileTableData(
      profileId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}profile_id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      )!,
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_date'],
      )!,
    );
  }

  @override
  $AspNetUsersProfileTableTable createAlias(String alias) {
    return $AspNetUsersProfileTableTable(attachedDatabase, alias);
  }
}

class AspNetUsersProfileTableData extends DataClass
    implements Insertable<AspNetUsersProfileTableData> {
  final String profileId;
  final String userId;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final bool isActive;
  final DateTime createdDate;
  const AspNetUsersProfileTableData({
    required this.profileId,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.isActive,
    required this.createdDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['profile_id'] = Variable<String>(profileId);
    map['user_id'] = Variable<String>(userId);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['is_active'] = Variable<bool>(isActive);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  AspNetUsersProfileTableCompanion toCompanion(bool nullToAbsent) {
    return AspNetUsersProfileTableCompanion(
      profileId: Value(profileId),
      userId: Value(userId),
      firstName: Value(firstName),
      lastName: Value(lastName),
      email: Value(email),
      phone: Value(phone),
      isActive: Value(isActive),
      createdDate: Value(createdDate),
    );
  }

  factory AspNetUsersProfileTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AspNetUsersProfileTableData(
      profileId: serializer.fromJson<String>(json['profileId']),
      userId: serializer.fromJson<String>(json['userId']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'profileId': serializer.toJson<String>(profileId),
      'userId': serializer.toJson<String>(userId),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'isActive': serializer.toJson<bool>(isActive),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  AspNetUsersProfileTableData copyWith({
    String? profileId,
    String? userId,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    bool? isActive,
    DateTime? createdDate,
  }) => AspNetUsersProfileTableData(
    profileId: profileId ?? this.profileId,
    userId: userId ?? this.userId,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    isActive: isActive ?? this.isActive,
    createdDate: createdDate ?? this.createdDate,
  );
  AspNetUsersProfileTableData copyWithCompanion(
    AspNetUsersProfileTableCompanion data,
  ) {
    return AspNetUsersProfileTableData(
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      userId: data.userId.present ? data.userId.value : this.userId,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      email: data.email.present ? data.email.value : this.email,
      phone: data.phone.present ? data.phone.value : this.phone,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdDate: data.createdDate.present
          ? data.createdDate.value
          : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AspNetUsersProfileTableData(')
          ..write('profileId: $profileId, ')
          ..write('userId: $userId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    profileId,
    userId,
    firstName,
    lastName,
    email,
    phone,
    isActive,
    createdDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AspNetUsersProfileTableData &&
          other.profileId == this.profileId &&
          other.userId == this.userId &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.isActive == this.isActive &&
          other.createdDate == this.createdDate);
}

class AspNetUsersProfileTableCompanion
    extends UpdateCompanion<AspNetUsersProfileTableData> {
  final Value<String> profileId;
  final Value<String> userId;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> phone;
  final Value<bool> isActive;
  final Value<DateTime> createdDate;
  final Value<int> rowid;
  const AspNetUsersProfileTableCompanion({
    this.profileId = const Value.absent(),
    this.userId = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AspNetUsersProfileTableCompanion.insert({
    required String profileId,
    required String userId,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    this.isActive = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : profileId = Value(profileId),
       userId = Value(userId),
       firstName = Value(firstName),
       lastName = Value(lastName),
       email = Value(email),
       phone = Value(phone);
  static Insertable<AspNetUsersProfileTableData> custom({
    Expression<String>? profileId,
    Expression<String>? userId,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<bool>? isActive,
    Expression<DateTime>? createdDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (profileId != null) 'profile_id': profileId,
      if (userId != null) 'user_id': userId,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (isActive != null) 'is_active': isActive,
      if (createdDate != null) 'created_date': createdDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AspNetUsersProfileTableCompanion copyWith({
    Value<String>? profileId,
    Value<String>? userId,
    Value<String>? firstName,
    Value<String>? lastName,
    Value<String>? email,
    Value<String>? phone,
    Value<bool>? isActive,
    Value<DateTime>? createdDate,
    Value<int>? rowid,
  }) {
    return AspNetUsersProfileTableCompanion(
      profileId: profileId ?? this.profileId,
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (profileId.present) {
      map['profile_id'] = Variable<String>(profileId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AspNetUsersProfileTableCompanion(')
          ..write('profileId: $profileId, ')
          ..write('userId: $userId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('isActive: $isActive, ')
          ..write('createdDate: $createdDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClientesTableTable clientesTable = $ClientesTableTable(this);
  late final $ClientContactTableTable clientContactTable =
      $ClientContactTableTable(this);
  late final $ClientJobTableTable clientJobTable = $ClientJobTableTable(this);
  late final $AddressTableTable addressTable = $AddressTableTable(this);
  late final $ClientAddressTableTable clientAddressTable =
      $ClientAddressTableTable(this);
  late final $IdentificationTypeTableTable identificationTypeTable =
      $IdentificationTypeTableTable(this);
  late final $LoanTableTable loanTable = $LoanTableTable(this);
  late final $LoanAuthorizationTableTable loanAuthorizationTable =
      $LoanAuthorizationTableTable(this);
  late final $LoanStateTableTable loanStateTable = $LoanStateTableTable(this);
  late final $LoanTermTableTable loanTermTable = $LoanTermTableTable(this);
  late final $LoanTypeTableTable loanTypeTable = $LoanTypeTableTable(this);
  late final $PaymentsTableTable paymentsTable = $PaymentsTableTable(this);
  late final $LatePaymentsTableTable latePaymentsTable =
      $LatePaymentsTableTable(this);
  late final $DisbursementTableTable disbursementTable =
      $DisbursementTableTable(this);
  late final $BankAccountTableTable bankAccountTable = $BankAccountTableTable(
    this,
  );
  late final $CurrencyTableTable currencyTable = $CurrencyTableTable(this);
  late final $CompanyTableTable companyTable = $CompanyTableTable(this);
  late final $MembershipTableTable membershipTable = $MembershipTableTable(
    this,
  );
  late final $ProvincesTableTable provincesTable = $ProvincesTableTable(this);
  late final $GenderTableTable genderTable = $GenderTableTable(this);
  late final $AspNetUsersProfileTableTable aspNetUsersProfileTable =
      $AspNetUsersProfileTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    clientesTable,
    clientContactTable,
    clientJobTable,
    addressTable,
    clientAddressTable,
    identificationTypeTable,
    loanTable,
    loanAuthorizationTable,
    loanStateTable,
    loanTermTable,
    loanTypeTable,
    paymentsTable,
    latePaymentsTable,
    disbursementTable,
    bankAccountTable,
    currencyTable,
    companyTable,
    membershipTable,
    provincesTable,
    genderTable,
    aspNetUsersProfileTable,
  ];
}

typedef $$ClientesTableTableCreateCompanionBuilder =
    ClientesTableCompanion Function({
      required String idClient,
      required String name,
      required String lastName,
      Value<String?> identificationTypeId,
      required String identification,
      required DateTime birthDay,
      required String genderId,
      required String phone,
      required String email,
      required String companyId,
      Value<bool> isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$ClientesTableTableUpdateCompanionBuilder =
    ClientesTableCompanion Function({
      Value<String> idClient,
      Value<String> name,
      Value<String> lastName,
      Value<String?> identificationTypeId,
      Value<String> identification,
      Value<DateTime> birthDay,
      Value<String> genderId,
      Value<String> phone,
      Value<String> email,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$ClientesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesTableTable> {
  $$ClientesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idClient => $composableBuilder(
    column: $table.idClient,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identification => $composableBuilder(
    column: $table.identification,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get birthDay => $composableBuilder(
    column: $table.birthDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get genderId => $composableBuilder(
    column: $table.genderId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClientesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesTableTable> {
  $$ClientesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idClient => $composableBuilder(
    column: $table.idClient,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identification => $composableBuilder(
    column: $table.identification,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get birthDay => $composableBuilder(
    column: $table.birthDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get genderId => $composableBuilder(
    column: $table.genderId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesTableTable> {
  $$ClientesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idClient =>
      $composableBuilder(column: $table.idClient, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get identification => $composableBuilder(
    column: $table.identification,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get birthDay =>
      $composableBuilder(column: $table.birthDay, builder: (column) => column);

  GeneratedColumn<String> get genderId =>
      $composableBuilder(column: $table.genderId, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$ClientesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientesTableTable,
          ClientesTableData,
          $$ClientesTableTableFilterComposer,
          $$ClientesTableTableOrderingComposer,
          $$ClientesTableTableAnnotationComposer,
          $$ClientesTableTableCreateCompanionBuilder,
          $$ClientesTableTableUpdateCompanionBuilder,
          (
            ClientesTableData,
            BaseReferences<
              _$AppDatabase,
              $ClientesTableTable,
              ClientesTableData
            >,
          ),
          ClientesTableData,
          PrefetchHooks Function()
        > {
  $$ClientesTableTableTableManager(_$AppDatabase db, $ClientesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> idClient = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> lastName = const Value.absent(),
                Value<String?> identificationTypeId = const Value.absent(),
                Value<String> identification = const Value.absent(),
                Value<DateTime> birthDay = const Value.absent(),
                Value<String> genderId = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClientesTableCompanion(
                idClient: idClient,
                name: name,
                lastName: lastName,
                identificationTypeId: identificationTypeId,
                identification: identification,
                birthDay: birthDay,
                genderId: genderId,
                phone: phone,
                email: email,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idClient,
                required String name,
                required String lastName,
                Value<String?> identificationTypeId = const Value.absent(),
                required String identification,
                required DateTime birthDay,
                required String genderId,
                required String phone,
                required String email,
                required String companyId,
                Value<bool> isActive = const Value.absent(),
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => ClientesTableCompanion.insert(
                idClient: idClient,
                name: name,
                lastName: lastName,
                identificationTypeId: identificationTypeId,
                identification: identification,
                birthDay: birthDay,
                genderId: genderId,
                phone: phone,
                email: email,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ClientesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientesTableTable,
      ClientesTableData,
      $$ClientesTableTableFilterComposer,
      $$ClientesTableTableOrderingComposer,
      $$ClientesTableTableAnnotationComposer,
      $$ClientesTableTableCreateCompanionBuilder,
      $$ClientesTableTableUpdateCompanionBuilder,
      (
        ClientesTableData,
        BaseReferences<_$AppDatabase, $ClientesTableTable, ClientesTableData>,
      ),
      ClientesTableData,
      PrefetchHooks Function()
    >;
typedef $$ClientContactTableTableCreateCompanionBuilder =
    ClientContactTableCompanion Function({
      required String clientContactId,
      required String clientId,
      required String description,
      required String phoneNumber,
      Value<String?> extension,
      required String companyId,
      required bool isActive,
      required int createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$ClientContactTableTableUpdateCompanionBuilder =
    ClientContactTableCompanion Function({
      Value<String> clientContactId,
      Value<String> clientId,
      Value<String> description,
      Value<String> phoneNumber,
      Value<String?> extension,
      Value<String> companyId,
      Value<bool> isActive,
      Value<int> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$ClientContactTableTableFilterComposer
    extends Composer<_$AppDatabase, $ClientContactTableTable> {
  $$ClientContactTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientContactId => $composableBuilder(
    column: $table.clientContactId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get extension => $composableBuilder(
    column: $table.extension,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClientContactTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientContactTableTable> {
  $$ClientContactTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientContactId => $composableBuilder(
    column: $table.clientContactId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get extension => $composableBuilder(
    column: $table.extension,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientContactTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientContactTableTable> {
  $$ClientContactTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientContactId => $composableBuilder(
    column: $table.clientContactId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get extension =>
      $composableBuilder(column: $table.extension, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$ClientContactTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientContactTableTable,
          ClientContactTableData,
          $$ClientContactTableTableFilterComposer,
          $$ClientContactTableTableOrderingComposer,
          $$ClientContactTableTableAnnotationComposer,
          $$ClientContactTableTableCreateCompanionBuilder,
          $$ClientContactTableTableUpdateCompanionBuilder,
          (
            ClientContactTableData,
            BaseReferences<
              _$AppDatabase,
              $ClientContactTableTable,
              ClientContactTableData
            >,
          ),
          ClientContactTableData,
          PrefetchHooks Function()
        > {
  $$ClientContactTableTableTableManager(
    _$AppDatabase db,
    $ClientContactTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientContactTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientContactTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientContactTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> clientContactId = const Value.absent(),
                Value<String> clientId = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> phoneNumber = const Value.absent(),
                Value<String?> extension = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClientContactTableCompanion(
                clientContactId: clientContactId,
                clientId: clientId,
                description: description,
                phoneNumber: phoneNumber,
                extension: extension,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientContactId,
                required String clientId,
                required String description,
                required String phoneNumber,
                Value<String?> extension = const Value.absent(),
                required String companyId,
                required bool isActive,
                required int createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => ClientContactTableCompanion.insert(
                clientContactId: clientContactId,
                clientId: clientId,
                description: description,
                phoneNumber: phoneNumber,
                extension: extension,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ClientContactTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientContactTableTable,
      ClientContactTableData,
      $$ClientContactTableTableFilterComposer,
      $$ClientContactTableTableOrderingComposer,
      $$ClientContactTableTableAnnotationComposer,
      $$ClientContactTableTableCreateCompanionBuilder,
      $$ClientContactTableTableUpdateCompanionBuilder,
      (
        ClientContactTableData,
        BaseReferences<
          _$AppDatabase,
          $ClientContactTableTable,
          ClientContactTableData
        >,
      ),
      ClientContactTableData,
      PrefetchHooks Function()
    >;
typedef $$ClientJobTableTableCreateCompanionBuilder =
    ClientJobTableCompanion Function({
      required String clientJobId,
      required String clientId,
      required String companyName,
      required String position,
      required DateTime startDate,
      Value<DateTime?> endDate,
      Value<bool?> currentJob,
      required double salary,
      Value<String?> immediateBoss,
      Value<String?> paymentFrequency,
      Value<String?> telephone,
      Value<int?> extension,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$ClientJobTableTableUpdateCompanionBuilder =
    ClientJobTableCompanion Function({
      Value<String> clientJobId,
      Value<String> clientId,
      Value<String> companyName,
      Value<String> position,
      Value<DateTime> startDate,
      Value<DateTime?> endDate,
      Value<bool?> currentJob,
      Value<double> salary,
      Value<String?> immediateBoss,
      Value<String?> paymentFrequency,
      Value<String?> telephone,
      Value<int?> extension,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$ClientJobTableTableFilterComposer
    extends Composer<_$AppDatabase, $ClientJobTableTable> {
  $$ClientJobTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientJobId => $composableBuilder(
    column: $table.clientJobId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get currentJob => $composableBuilder(
    column: $table.currentJob,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get salary => $composableBuilder(
    column: $table.salary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get immediateBoss => $composableBuilder(
    column: $table.immediateBoss,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentFrequency => $composableBuilder(
    column: $table.paymentFrequency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telephone => $composableBuilder(
    column: $table.telephone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get extension => $composableBuilder(
    column: $table.extension,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClientJobTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientJobTableTable> {
  $$ClientJobTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientJobId => $composableBuilder(
    column: $table.clientJobId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get currentJob => $composableBuilder(
    column: $table.currentJob,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get salary => $composableBuilder(
    column: $table.salary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get immediateBoss => $composableBuilder(
    column: $table.immediateBoss,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentFrequency => $composableBuilder(
    column: $table.paymentFrequency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telephone => $composableBuilder(
    column: $table.telephone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get extension => $composableBuilder(
    column: $table.extension,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientJobTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientJobTableTable> {
  $$ClientJobTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientJobId => $composableBuilder(
    column: $table.clientJobId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<bool> get currentJob => $composableBuilder(
    column: $table.currentJob,
    builder: (column) => column,
  );

  GeneratedColumn<double> get salary =>
      $composableBuilder(column: $table.salary, builder: (column) => column);

  GeneratedColumn<String> get immediateBoss => $composableBuilder(
    column: $table.immediateBoss,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paymentFrequency => $composableBuilder(
    column: $table.paymentFrequency,
    builder: (column) => column,
  );

  GeneratedColumn<String> get telephone =>
      $composableBuilder(column: $table.telephone, builder: (column) => column);

  GeneratedColumn<int> get extension =>
      $composableBuilder(column: $table.extension, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$ClientJobTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientJobTableTable,
          ClientJobTableData,
          $$ClientJobTableTableFilterComposer,
          $$ClientJobTableTableOrderingComposer,
          $$ClientJobTableTableAnnotationComposer,
          $$ClientJobTableTableCreateCompanionBuilder,
          $$ClientJobTableTableUpdateCompanionBuilder,
          (
            ClientJobTableData,
            BaseReferences<
              _$AppDatabase,
              $ClientJobTableTable,
              ClientJobTableData
            >,
          ),
          ClientJobTableData,
          PrefetchHooks Function()
        > {
  $$ClientJobTableTableTableManager(
    _$AppDatabase db,
    $ClientJobTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientJobTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientJobTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientJobTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientJobId = const Value.absent(),
                Value<String> clientId = const Value.absent(),
                Value<String> companyName = const Value.absent(),
                Value<String> position = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<bool?> currentJob = const Value.absent(),
                Value<double> salary = const Value.absent(),
                Value<String?> immediateBoss = const Value.absent(),
                Value<String?> paymentFrequency = const Value.absent(),
                Value<String?> telephone = const Value.absent(),
                Value<int?> extension = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClientJobTableCompanion(
                clientJobId: clientJobId,
                clientId: clientId,
                companyName: companyName,
                position: position,
                startDate: startDate,
                endDate: endDate,
                currentJob: currentJob,
                salary: salary,
                immediateBoss: immediateBoss,
                paymentFrequency: paymentFrequency,
                telephone: telephone,
                extension: extension,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientJobId,
                required String clientId,
                required String companyName,
                required String position,
                required DateTime startDate,
                Value<DateTime?> endDate = const Value.absent(),
                Value<bool?> currentJob = const Value.absent(),
                required double salary,
                Value<String?> immediateBoss = const Value.absent(),
                Value<String?> paymentFrequency = const Value.absent(),
                Value<String?> telephone = const Value.absent(),
                Value<int?> extension = const Value.absent(),
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => ClientJobTableCompanion.insert(
                clientJobId: clientJobId,
                clientId: clientId,
                companyName: companyName,
                position: position,
                startDate: startDate,
                endDate: endDate,
                currentJob: currentJob,
                salary: salary,
                immediateBoss: immediateBoss,
                paymentFrequency: paymentFrequency,
                telephone: telephone,
                extension: extension,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ClientJobTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientJobTableTable,
      ClientJobTableData,
      $$ClientJobTableTableFilterComposer,
      $$ClientJobTableTableOrderingComposer,
      $$ClientJobTableTableAnnotationComposer,
      $$ClientJobTableTableCreateCompanionBuilder,
      $$ClientJobTableTableUpdateCompanionBuilder,
      (
        ClientJobTableData,
        BaseReferences<_$AppDatabase, $ClientJobTableTable, ClientJobTableData>,
      ),
      ClientJobTableData,
      PrefetchHooks Function()
    >;
typedef $$AddressTableTableCreateCompanionBuilder =
    AddressTableCompanion Function({
      required String idAddress,
      required String addressName,
      Value<String?> idProvince,
      Value<String?> neighborhood,
      Value<String?> street,
      Value<int?> number,
      Value<String?> building,
      Value<String?> apartment,
      Value<int?> floor,
      Value<String?> longitude,
      Value<String?> latitude,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$AddressTableTableUpdateCompanionBuilder =
    AddressTableCompanion Function({
      Value<String> idAddress,
      Value<String> addressName,
      Value<String?> idProvince,
      Value<String?> neighborhood,
      Value<String?> street,
      Value<int?> number,
      Value<String?> building,
      Value<String?> apartment,
      Value<int?> floor,
      Value<String?> longitude,
      Value<String?> latitude,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$AddressTableTableFilterComposer
    extends Composer<_$AppDatabase, $AddressTableTable> {
  $$AddressTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idAddress => $composableBuilder(
    column: $table.idAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressName => $composableBuilder(
    column: $table.addressName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idProvince => $composableBuilder(
    column: $table.idProvince,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get neighborhood => $composableBuilder(
    column: $table.neighborhood,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get street => $composableBuilder(
    column: $table.street,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get building => $composableBuilder(
    column: $table.building,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get apartment => $composableBuilder(
    column: $table.apartment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get floor => $composableBuilder(
    column: $table.floor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AddressTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AddressTableTable> {
  $$AddressTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idAddress => $composableBuilder(
    column: $table.idAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressName => $composableBuilder(
    column: $table.addressName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idProvince => $composableBuilder(
    column: $table.idProvince,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get neighborhood => $composableBuilder(
    column: $table.neighborhood,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get street => $composableBuilder(
    column: $table.street,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get building => $composableBuilder(
    column: $table.building,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get apartment => $composableBuilder(
    column: $table.apartment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get floor => $composableBuilder(
    column: $table.floor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AddressTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AddressTableTable> {
  $$AddressTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idAddress =>
      $composableBuilder(column: $table.idAddress, builder: (column) => column);

  GeneratedColumn<String> get addressName => $composableBuilder(
    column: $table.addressName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get idProvince => $composableBuilder(
    column: $table.idProvince,
    builder: (column) => column,
  );

  GeneratedColumn<String> get neighborhood => $composableBuilder(
    column: $table.neighborhood,
    builder: (column) => column,
  );

  GeneratedColumn<String> get street =>
      $composableBuilder(column: $table.street, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get building =>
      $composableBuilder(column: $table.building, builder: (column) => column);

  GeneratedColumn<String> get apartment =>
      $composableBuilder(column: $table.apartment, builder: (column) => column);

  GeneratedColumn<int> get floor =>
      $composableBuilder(column: $table.floor, builder: (column) => column);

  GeneratedColumn<String> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$AddressTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AddressTableTable,
          AddressTableData,
          $$AddressTableTableFilterComposer,
          $$AddressTableTableOrderingComposer,
          $$AddressTableTableAnnotationComposer,
          $$AddressTableTableCreateCompanionBuilder,
          $$AddressTableTableUpdateCompanionBuilder,
          (
            AddressTableData,
            BaseReferences<_$AppDatabase, $AddressTableTable, AddressTableData>,
          ),
          AddressTableData,
          PrefetchHooks Function()
        > {
  $$AddressTableTableTableManager(_$AppDatabase db, $AddressTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AddressTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AddressTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AddressTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> idAddress = const Value.absent(),
                Value<String> addressName = const Value.absent(),
                Value<String?> idProvince = const Value.absent(),
                Value<String?> neighborhood = const Value.absent(),
                Value<String?> street = const Value.absent(),
                Value<int?> number = const Value.absent(),
                Value<String?> building = const Value.absent(),
                Value<String?> apartment = const Value.absent(),
                Value<int?> floor = const Value.absent(),
                Value<String?> longitude = const Value.absent(),
                Value<String?> latitude = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AddressTableCompanion(
                idAddress: idAddress,
                addressName: addressName,
                idProvince: idProvince,
                neighborhood: neighborhood,
                street: street,
                number: number,
                building: building,
                apartment: apartment,
                floor: floor,
                longitude: longitude,
                latitude: latitude,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idAddress,
                required String addressName,
                Value<String?> idProvince = const Value.absent(),
                Value<String?> neighborhood = const Value.absent(),
                Value<String?> street = const Value.absent(),
                Value<int?> number = const Value.absent(),
                Value<String?> building = const Value.absent(),
                Value<String?> apartment = const Value.absent(),
                Value<int?> floor = const Value.absent(),
                Value<String?> longitude = const Value.absent(),
                Value<String?> latitude = const Value.absent(),
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => AddressTableCompanion.insert(
                idAddress: idAddress,
                addressName: addressName,
                idProvince: idProvince,
                neighborhood: neighborhood,
                street: street,
                number: number,
                building: building,
                apartment: apartment,
                floor: floor,
                longitude: longitude,
                latitude: latitude,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AddressTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AddressTableTable,
      AddressTableData,
      $$AddressTableTableFilterComposer,
      $$AddressTableTableOrderingComposer,
      $$AddressTableTableAnnotationComposer,
      $$AddressTableTableCreateCompanionBuilder,
      $$AddressTableTableUpdateCompanionBuilder,
      (
        AddressTableData,
        BaseReferences<_$AppDatabase, $AddressTableTable, AddressTableData>,
      ),
      AddressTableData,
      PrefetchHooks Function()
    >;
typedef $$ClientAddressTableTableCreateCompanionBuilder =
    ClientAddressTableCompanion Function({
      required String clientId,
      required String addressId,
      Value<int> rowid,
    });
typedef $$ClientAddressTableTableUpdateCompanionBuilder =
    ClientAddressTableCompanion Function({
      Value<String> clientId,
      Value<String> addressId,
      Value<int> rowid,
    });

class $$ClientAddressTableTableFilterComposer
    extends Composer<_$AppDatabase, $ClientAddressTableTable> {
  $$ClientAddressTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressId => $composableBuilder(
    column: $table.addressId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ClientAddressTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientAddressTableTable> {
  $$ClientAddressTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressId => $composableBuilder(
    column: $table.addressId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientAddressTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientAddressTableTable> {
  $$ClientAddressTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get addressId =>
      $composableBuilder(column: $table.addressId, builder: (column) => column);
}

class $$ClientAddressTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientAddressTableTable,
          ClientAddressTableData,
          $$ClientAddressTableTableFilterComposer,
          $$ClientAddressTableTableOrderingComposer,
          $$ClientAddressTableTableAnnotationComposer,
          $$ClientAddressTableTableCreateCompanionBuilder,
          $$ClientAddressTableTableUpdateCompanionBuilder,
          (
            ClientAddressTableData,
            BaseReferences<
              _$AppDatabase,
              $ClientAddressTableTable,
              ClientAddressTableData
            >,
          ),
          ClientAddressTableData,
          PrefetchHooks Function()
        > {
  $$ClientAddressTableTableTableManager(
    _$AppDatabase db,
    $ClientAddressTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientAddressTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientAddressTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientAddressTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> clientId = const Value.absent(),
                Value<String> addressId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClientAddressTableCompanion(
                clientId: clientId,
                addressId: addressId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientId,
                required String addressId,
                Value<int> rowid = const Value.absent(),
              }) => ClientAddressTableCompanion.insert(
                clientId: clientId,
                addressId: addressId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ClientAddressTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientAddressTableTable,
      ClientAddressTableData,
      $$ClientAddressTableTableFilterComposer,
      $$ClientAddressTableTableOrderingComposer,
      $$ClientAddressTableTableAnnotationComposer,
      $$ClientAddressTableTableCreateCompanionBuilder,
      $$ClientAddressTableTableUpdateCompanionBuilder,
      (
        ClientAddressTableData,
        BaseReferences<
          _$AppDatabase,
          $ClientAddressTableTable,
          ClientAddressTableData
        >,
      ),
      ClientAddressTableData,
      PrefetchHooks Function()
    >;
typedef $$IdentificationTypeTableTableCreateCompanionBuilder =
    IdentificationTypeTableCompanion Function({
      required String identificationTypeId,
      required String identificationTypeName,
      required bool isActive,
      Value<int> rowid,
    });
typedef $$IdentificationTypeTableTableUpdateCompanionBuilder =
    IdentificationTypeTableCompanion Function({
      Value<String> identificationTypeId,
      Value<String> identificationTypeName,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$IdentificationTypeTableTableFilterComposer
    extends Composer<_$AppDatabase, $IdentificationTypeTableTable> {
  $$IdentificationTypeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificationTypeName => $composableBuilder(
    column: $table.identificationTypeName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$IdentificationTypeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $IdentificationTypeTableTable> {
  $$IdentificationTypeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificationTypeName => $composableBuilder(
    column: $table.identificationTypeName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IdentificationTypeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $IdentificationTypeTableTable> {
  $$IdentificationTypeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get identificationTypeId => $composableBuilder(
    column: $table.identificationTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get identificationTypeName => $composableBuilder(
    column: $table.identificationTypeName,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$IdentificationTypeTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IdentificationTypeTableTable,
          IdentificationTypeTableData,
          $$IdentificationTypeTableTableFilterComposer,
          $$IdentificationTypeTableTableOrderingComposer,
          $$IdentificationTypeTableTableAnnotationComposer,
          $$IdentificationTypeTableTableCreateCompanionBuilder,
          $$IdentificationTypeTableTableUpdateCompanionBuilder,
          (
            IdentificationTypeTableData,
            BaseReferences<
              _$AppDatabase,
              $IdentificationTypeTableTable,
              IdentificationTypeTableData
            >,
          ),
          IdentificationTypeTableData,
          PrefetchHooks Function()
        > {
  $$IdentificationTypeTableTableTableManager(
    _$AppDatabase db,
    $IdentificationTypeTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IdentificationTypeTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$IdentificationTypeTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$IdentificationTypeTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> identificationTypeId = const Value.absent(),
                Value<String> identificationTypeName = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IdentificationTypeTableCompanion(
                identificationTypeId: identificationTypeId,
                identificationTypeName: identificationTypeName,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String identificationTypeId,
                required String identificationTypeName,
                required bool isActive,
                Value<int> rowid = const Value.absent(),
              }) => IdentificationTypeTableCompanion.insert(
                identificationTypeId: identificationTypeId,
                identificationTypeName: identificationTypeName,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$IdentificationTypeTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IdentificationTypeTableTable,
      IdentificationTypeTableData,
      $$IdentificationTypeTableTableFilterComposer,
      $$IdentificationTypeTableTableOrderingComposer,
      $$IdentificationTypeTableTableAnnotationComposer,
      $$IdentificationTypeTableTableCreateCompanionBuilder,
      $$IdentificationTypeTableTableUpdateCompanionBuilder,
      (
        IdentificationTypeTableData,
        BaseReferences<
          _$AppDatabase,
          $IdentificationTypeTableTable,
          IdentificationTypeTableData
        >,
      ),
      IdentificationTypeTableData,
      PrefetchHooks Function()
    >;
typedef $$LoanTableTableCreateCompanionBuilder =
    LoanTableCompanion Function({
      required String loanId,
      required int loanNo,
      required String idClient,
      required String loanTermId,
      Value<String?> authorizeId,
      Value<String?> disbursementId,
      required String loanStateId,
      required String currencyId,
      required String loanTypeId,
      required int termCount,
      required double amount,
      required double interestRate,
      required int paymentDay,
      required double paymentAmount,
      Value<DateTime> loanDate,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$LoanTableTableUpdateCompanionBuilder =
    LoanTableCompanion Function({
      Value<String> loanId,
      Value<int> loanNo,
      Value<String> idClient,
      Value<String> loanTermId,
      Value<String?> authorizeId,
      Value<String?> disbursementId,
      Value<String> loanStateId,
      Value<String> currencyId,
      Value<String> loanTypeId,
      Value<int> termCount,
      Value<double> amount,
      Value<double> interestRate,
      Value<int> paymentDay,
      Value<double> paymentAmount,
      Value<DateTime> loanDate,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$LoanTableTableFilterComposer
    extends Composer<_$AppDatabase, $LoanTableTable> {
  $$LoanTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get loanNo => $composableBuilder(
    column: $table.loanNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idClient => $composableBuilder(
    column: $table.idClient,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorizeId => $composableBuilder(
    column: $table.authorizeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get termCount => $composableBuilder(
    column: $table.termCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get interestRate => $composableBuilder(
    column: $table.interestRate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get paymentDay => $composableBuilder(
    column: $table.paymentDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get paymentAmount => $composableBuilder(
    column: $table.paymentAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get loanDate => $composableBuilder(
    column: $table.loanDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LoanTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanTableTable> {
  $$LoanTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get loanNo => $composableBuilder(
    column: $table.loanNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idClient => $composableBuilder(
    column: $table.idClient,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorizeId => $composableBuilder(
    column: $table.authorizeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get termCount => $composableBuilder(
    column: $table.termCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get interestRate => $composableBuilder(
    column: $table.interestRate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get paymentDay => $composableBuilder(
    column: $table.paymentDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get paymentAmount => $composableBuilder(
    column: $table.paymentAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get loanDate => $composableBuilder(
    column: $table.loanDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoanTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanTableTable> {
  $$LoanTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get loanId =>
      $composableBuilder(column: $table.loanId, builder: (column) => column);

  GeneratedColumn<int> get loanNo =>
      $composableBuilder(column: $table.loanNo, builder: (column) => column);

  GeneratedColumn<String> get idClient =>
      $composableBuilder(column: $table.idClient, builder: (column) => column);

  GeneratedColumn<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get authorizeId => $composableBuilder(
    column: $table.authorizeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get termCount =>
      $composableBuilder(column: $table.termCount, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<double> get interestRate => $composableBuilder(
    column: $table.interestRate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get paymentDay => $composableBuilder(
    column: $table.paymentDay,
    builder: (column) => column,
  );

  GeneratedColumn<double> get paymentAmount => $composableBuilder(
    column: $table.paymentAmount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get loanDate =>
      $composableBuilder(column: $table.loanDate, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$LoanTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanTableTable,
          LoanTableData,
          $$LoanTableTableFilterComposer,
          $$LoanTableTableOrderingComposer,
          $$LoanTableTableAnnotationComposer,
          $$LoanTableTableCreateCompanionBuilder,
          $$LoanTableTableUpdateCompanionBuilder,
          (
            LoanTableData,
            BaseReferences<_$AppDatabase, $LoanTableTable, LoanTableData>,
          ),
          LoanTableData,
          PrefetchHooks Function()
        > {
  $$LoanTableTableTableManager(_$AppDatabase db, $LoanTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoanTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoanTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> loanId = const Value.absent(),
                Value<int> loanNo = const Value.absent(),
                Value<String> idClient = const Value.absent(),
                Value<String> loanTermId = const Value.absent(),
                Value<String?> authorizeId = const Value.absent(),
                Value<String?> disbursementId = const Value.absent(),
                Value<String> loanStateId = const Value.absent(),
                Value<String> currencyId = const Value.absent(),
                Value<String> loanTypeId = const Value.absent(),
                Value<int> termCount = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<double> interestRate = const Value.absent(),
                Value<int> paymentDay = const Value.absent(),
                Value<double> paymentAmount = const Value.absent(),
                Value<DateTime> loanDate = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanTableCompanion(
                loanId: loanId,
                loanNo: loanNo,
                idClient: idClient,
                loanTermId: loanTermId,
                authorizeId: authorizeId,
                disbursementId: disbursementId,
                loanStateId: loanStateId,
                currencyId: currencyId,
                loanTypeId: loanTypeId,
                termCount: termCount,
                amount: amount,
                interestRate: interestRate,
                paymentDay: paymentDay,
                paymentAmount: paymentAmount,
                loanDate: loanDate,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String loanId,
                required int loanNo,
                required String idClient,
                required String loanTermId,
                Value<String?> authorizeId = const Value.absent(),
                Value<String?> disbursementId = const Value.absent(),
                required String loanStateId,
                required String currencyId,
                required String loanTypeId,
                required int termCount,
                required double amount,
                required double interestRate,
                required int paymentDay,
                required double paymentAmount,
                Value<DateTime> loanDate = const Value.absent(),
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => LoanTableCompanion.insert(
                loanId: loanId,
                loanNo: loanNo,
                idClient: idClient,
                loanTermId: loanTermId,
                authorizeId: authorizeId,
                disbursementId: disbursementId,
                loanStateId: loanStateId,
                currencyId: currencyId,
                loanTypeId: loanTypeId,
                termCount: termCount,
                amount: amount,
                interestRate: interestRate,
                paymentDay: paymentDay,
                paymentAmount: paymentAmount,
                loanDate: loanDate,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LoanTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanTableTable,
      LoanTableData,
      $$LoanTableTableFilterComposer,
      $$LoanTableTableOrderingComposer,
      $$LoanTableTableAnnotationComposer,
      $$LoanTableTableCreateCompanionBuilder,
      $$LoanTableTableUpdateCompanionBuilder,
      (
        LoanTableData,
        BaseReferences<_$AppDatabase, $LoanTableTable, LoanTableData>,
      ),
      LoanTableData,
      PrefetchHooks Function()
    >;
typedef $$LoanAuthorizationTableTableCreateCompanionBuilder =
    LoanAuthorizationTableCompanion Function({
      required String authorizationId,
      required String authorizeBy,
      required DateTime authorizeDate,
      Value<String?> comment,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$LoanAuthorizationTableTableUpdateCompanionBuilder =
    LoanAuthorizationTableCompanion Function({
      Value<String> authorizationId,
      Value<String> authorizeBy,
      Value<DateTime> authorizeDate,
      Value<String?> comment,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$LoanAuthorizationTableTableFilterComposer
    extends Composer<_$AppDatabase, $LoanAuthorizationTableTable> {
  $$LoanAuthorizationTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get authorizationId => $composableBuilder(
    column: $table.authorizationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get authorizeDate => $composableBuilder(
    column: $table.authorizeDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LoanAuthorizationTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanAuthorizationTableTable> {
  $$LoanAuthorizationTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get authorizationId => $composableBuilder(
    column: $table.authorizationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get authorizeDate => $composableBuilder(
    column: $table.authorizeDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoanAuthorizationTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanAuthorizationTableTable> {
  $$LoanAuthorizationTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get authorizationId => $composableBuilder(
    column: $table.authorizationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get authorizeDate => $composableBuilder(
    column: $table.authorizeDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$LoanAuthorizationTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanAuthorizationTableTable,
          LoanAuthorizationTableData,
          $$LoanAuthorizationTableTableFilterComposer,
          $$LoanAuthorizationTableTableOrderingComposer,
          $$LoanAuthorizationTableTableAnnotationComposer,
          $$LoanAuthorizationTableTableCreateCompanionBuilder,
          $$LoanAuthorizationTableTableUpdateCompanionBuilder,
          (
            LoanAuthorizationTableData,
            BaseReferences<
              _$AppDatabase,
              $LoanAuthorizationTableTable,
              LoanAuthorizationTableData
            >,
          ),
          LoanAuthorizationTableData,
          PrefetchHooks Function()
        > {
  $$LoanAuthorizationTableTableTableManager(
    _$AppDatabase db,
    $LoanAuthorizationTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanAuthorizationTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$LoanAuthorizationTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$LoanAuthorizationTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> authorizationId = const Value.absent(),
                Value<String> authorizeBy = const Value.absent(),
                Value<DateTime> authorizeDate = const Value.absent(),
                Value<String?> comment = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanAuthorizationTableCompanion(
                authorizationId: authorizationId,
                authorizeBy: authorizeBy,
                authorizeDate: authorizeDate,
                comment: comment,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String authorizationId,
                required String authorizeBy,
                required DateTime authorizeDate,
                Value<String?> comment = const Value.absent(),
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => LoanAuthorizationTableCompanion.insert(
                authorizationId: authorizationId,
                authorizeBy: authorizeBy,
                authorizeDate: authorizeDate,
                comment: comment,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LoanAuthorizationTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanAuthorizationTableTable,
      LoanAuthorizationTableData,
      $$LoanAuthorizationTableTableFilterComposer,
      $$LoanAuthorizationTableTableOrderingComposer,
      $$LoanAuthorizationTableTableAnnotationComposer,
      $$LoanAuthorizationTableTableCreateCompanionBuilder,
      $$LoanAuthorizationTableTableUpdateCompanionBuilder,
      (
        LoanAuthorizationTableData,
        BaseReferences<
          _$AppDatabase,
          $LoanAuthorizationTableTable,
          LoanAuthorizationTableData
        >,
      ),
      LoanAuthorizationTableData,
      PrefetchHooks Function()
    >;
typedef $$LoanStateTableTableCreateCompanionBuilder =
    LoanStateTableCompanion Function({
      required String loanStateId,
      Value<String?> description,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$LoanStateTableTableUpdateCompanionBuilder =
    LoanStateTableCompanion Function({
      Value<String> loanStateId,
      Value<String?> description,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$LoanStateTableTableFilterComposer
    extends Composer<_$AppDatabase, $LoanStateTableTable> {
  $$LoanStateTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LoanStateTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanStateTableTable> {
  $$LoanStateTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoanStateTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanStateTableTable> {
  $$LoanStateTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get loanStateId => $composableBuilder(
    column: $table.loanStateId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$LoanStateTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanStateTableTable,
          LoanStateTableData,
          $$LoanStateTableTableFilterComposer,
          $$LoanStateTableTableOrderingComposer,
          $$LoanStateTableTableAnnotationComposer,
          $$LoanStateTableTableCreateCompanionBuilder,
          $$LoanStateTableTableUpdateCompanionBuilder,
          (
            LoanStateTableData,
            BaseReferences<
              _$AppDatabase,
              $LoanStateTableTable,
              LoanStateTableData
            >,
          ),
          LoanStateTableData,
          PrefetchHooks Function()
        > {
  $$LoanStateTableTableTableManager(
    _$AppDatabase db,
    $LoanStateTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanStateTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoanStateTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoanStateTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> loanStateId = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanStateTableCompanion(
                loanStateId: loanStateId,
                description: description,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String loanStateId,
                Value<String?> description = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanStateTableCompanion.insert(
                loanStateId: loanStateId,
                description: description,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LoanStateTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanStateTableTable,
      LoanStateTableData,
      $$LoanStateTableTableFilterComposer,
      $$LoanStateTableTableOrderingComposer,
      $$LoanStateTableTableAnnotationComposer,
      $$LoanStateTableTableCreateCompanionBuilder,
      $$LoanStateTableTableUpdateCompanionBuilder,
      (
        LoanStateTableData,
        BaseReferences<_$AppDatabase, $LoanStateTableTable, LoanStateTableData>,
      ),
      LoanStateTableData,
      PrefetchHooks Function()
    >;
typedef $$LoanTermTableTableCreateCompanionBuilder =
    LoanTermTableCompanion Function({
      required String loanTermId,
      required String termFrecuency,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$LoanTermTableTableUpdateCompanionBuilder =
    LoanTermTableCompanion Function({
      Value<String> loanTermId,
      Value<String> termFrecuency,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$LoanTermTableTableFilterComposer
    extends Composer<_$AppDatabase, $LoanTermTableTable> {
  $$LoanTermTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get termFrecuency => $composableBuilder(
    column: $table.termFrecuency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LoanTermTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanTermTableTable> {
  $$LoanTermTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get termFrecuency => $composableBuilder(
    column: $table.termFrecuency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoanTermTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanTermTableTable> {
  $$LoanTermTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get loanTermId => $composableBuilder(
    column: $table.loanTermId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get termFrecuency => $composableBuilder(
    column: $table.termFrecuency,
    builder: (column) => column,
  );

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$LoanTermTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanTermTableTable,
          LoanTermTableData,
          $$LoanTermTableTableFilterComposer,
          $$LoanTermTableTableOrderingComposer,
          $$LoanTermTableTableAnnotationComposer,
          $$LoanTermTableTableCreateCompanionBuilder,
          $$LoanTermTableTableUpdateCompanionBuilder,
          (
            LoanTermTableData,
            BaseReferences<
              _$AppDatabase,
              $LoanTermTableTable,
              LoanTermTableData
            >,
          ),
          LoanTermTableData,
          PrefetchHooks Function()
        > {
  $$LoanTermTableTableTableManager(_$AppDatabase db, $LoanTermTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanTermTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoanTermTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoanTermTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> loanTermId = const Value.absent(),
                Value<String> termFrecuency = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanTermTableCompanion(
                loanTermId: loanTermId,
                termFrecuency: termFrecuency,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String loanTermId,
                required String termFrecuency,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => LoanTermTableCompanion.insert(
                loanTermId: loanTermId,
                termFrecuency: termFrecuency,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LoanTermTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanTermTableTable,
      LoanTermTableData,
      $$LoanTermTableTableFilterComposer,
      $$LoanTermTableTableOrderingComposer,
      $$LoanTermTableTableAnnotationComposer,
      $$LoanTermTableTableCreateCompanionBuilder,
      $$LoanTermTableTableUpdateCompanionBuilder,
      (
        LoanTermTableData,
        BaseReferences<_$AppDatabase, $LoanTermTableTable, LoanTermTableData>,
      ),
      LoanTermTableData,
      PrefetchHooks Function()
    >;
typedef $$LoanTypeTableTableCreateCompanionBuilder =
    LoanTypeTableCompanion Function({
      required String loanTypeId,
      required String description,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$LoanTypeTableTableUpdateCompanionBuilder =
    LoanTypeTableCompanion Function({
      Value<String> loanTypeId,
      Value<String> description,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$LoanTypeTableTableFilterComposer
    extends Composer<_$AppDatabase, $LoanTypeTableTable> {
  $$LoanTypeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LoanTypeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanTypeTableTable> {
  $$LoanTypeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoanTypeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanTypeTableTable> {
  $$LoanTypeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get loanTypeId => $composableBuilder(
    column: $table.loanTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$LoanTypeTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanTypeTableTable,
          LoanTypeTableData,
          $$LoanTypeTableTableFilterComposer,
          $$LoanTypeTableTableOrderingComposer,
          $$LoanTypeTableTableAnnotationComposer,
          $$LoanTypeTableTableCreateCompanionBuilder,
          $$LoanTypeTableTableUpdateCompanionBuilder,
          (
            LoanTypeTableData,
            BaseReferences<
              _$AppDatabase,
              $LoanTypeTableTable,
              LoanTypeTableData
            >,
          ),
          LoanTypeTableData,
          PrefetchHooks Function()
        > {
  $$LoanTypeTableTableTableManager(_$AppDatabase db, $LoanTypeTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanTypeTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoanTypeTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoanTypeTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> loanTypeId = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanTypeTableCompanion(
                loanTypeId: loanTypeId,
                description: description,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String loanTypeId,
                required String description,
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanTypeTableCompanion.insert(
                loanTypeId: loanTypeId,
                description: description,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LoanTypeTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanTypeTableTable,
      LoanTypeTableData,
      $$LoanTypeTableTableFilterComposer,
      $$LoanTypeTableTableOrderingComposer,
      $$LoanTypeTableTableAnnotationComposer,
      $$LoanTypeTableTableCreateCompanionBuilder,
      $$LoanTypeTableTableUpdateCompanionBuilder,
      (
        LoanTypeTableData,
        BaseReferences<_$AppDatabase, $LoanTypeTableTable, LoanTypeTableData>,
      ),
      LoanTypeTableData,
      PrefetchHooks Function()
    >;
typedef $$PaymentsTableTableCreateCompanionBuilder =
    PaymentsTableCompanion Function({
      required String paymentId,
      required String loanId,
      required int noPayment,
      required double amount,
      required double interest,
      required double remainingAmount,
      required DateTime date,
      required String note,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$PaymentsTableTableUpdateCompanionBuilder =
    PaymentsTableCompanion Function({
      Value<String> paymentId,
      Value<String> loanId,
      Value<int> noPayment,
      Value<double> amount,
      Value<double> interest,
      Value<double> remainingAmount,
      Value<DateTime> date,
      Value<String> note,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$PaymentsTableTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentsTableTable> {
  $$PaymentsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get paymentId => $composableBuilder(
    column: $table.paymentId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get noPayment => $composableBuilder(
    column: $table.noPayment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get interest => $composableBuilder(
    column: $table.interest,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get remainingAmount => $composableBuilder(
    column: $table.remainingAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PaymentsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentsTableTable> {
  $$PaymentsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get paymentId => $composableBuilder(
    column: $table.paymentId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get noPayment => $composableBuilder(
    column: $table.noPayment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get interest => $composableBuilder(
    column: $table.interest,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get remainingAmount => $composableBuilder(
    column: $table.remainingAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PaymentsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentsTableTable> {
  $$PaymentsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get paymentId =>
      $composableBuilder(column: $table.paymentId, builder: (column) => column);

  GeneratedColumn<String> get loanId =>
      $composableBuilder(column: $table.loanId, builder: (column) => column);

  GeneratedColumn<int> get noPayment =>
      $composableBuilder(column: $table.noPayment, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<double> get interest =>
      $composableBuilder(column: $table.interest, builder: (column) => column);

  GeneratedColumn<double> get remainingAmount => $composableBuilder(
    column: $table.remainingAmount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$PaymentsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PaymentsTableTable,
          PaymentsTableData,
          $$PaymentsTableTableFilterComposer,
          $$PaymentsTableTableOrderingComposer,
          $$PaymentsTableTableAnnotationComposer,
          $$PaymentsTableTableCreateCompanionBuilder,
          $$PaymentsTableTableUpdateCompanionBuilder,
          (
            PaymentsTableData,
            BaseReferences<
              _$AppDatabase,
              $PaymentsTableTable,
              PaymentsTableData
            >,
          ),
          PaymentsTableData,
          PrefetchHooks Function()
        > {
  $$PaymentsTableTableTableManager(_$AppDatabase db, $PaymentsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> paymentId = const Value.absent(),
                Value<String> loanId = const Value.absent(),
                Value<int> noPayment = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<double> interest = const Value.absent(),
                Value<double> remainingAmount = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentsTableCompanion(
                paymentId: paymentId,
                loanId: loanId,
                noPayment: noPayment,
                amount: amount,
                interest: interest,
                remainingAmount: remainingAmount,
                date: date,
                note: note,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String paymentId,
                required String loanId,
                required int noPayment,
                required double amount,
                required double interest,
                required double remainingAmount,
                required DateTime date,
                required String note,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => PaymentsTableCompanion.insert(
                paymentId: paymentId,
                loanId: loanId,
                noPayment: noPayment,
                amount: amount,
                interest: interest,
                remainingAmount: remainingAmount,
                date: date,
                note: note,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PaymentsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PaymentsTableTable,
      PaymentsTableData,
      $$PaymentsTableTableFilterComposer,
      $$PaymentsTableTableOrderingComposer,
      $$PaymentsTableTableAnnotationComposer,
      $$PaymentsTableTableCreateCompanionBuilder,
      $$PaymentsTableTableUpdateCompanionBuilder,
      (
        PaymentsTableData,
        BaseReferences<_$AppDatabase, $PaymentsTableTable, PaymentsTableData>,
      ),
      PaymentsTableData,
      PrefetchHooks Function()
    >;
typedef $$LatePaymentsTableTableCreateCompanionBuilder =
    LatePaymentsTableCompanion Function({
      required String idLatePayment,
      required String loanId,
      required double latePayment,
      required int cantOverdue,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$LatePaymentsTableTableUpdateCompanionBuilder =
    LatePaymentsTableCompanion Function({
      Value<String> idLatePayment,
      Value<String> loanId,
      Value<double> latePayment,
      Value<int> cantOverdue,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$LatePaymentsTableTableFilterComposer
    extends Composer<_$AppDatabase, $LatePaymentsTableTable> {
  $$LatePaymentsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idLatePayment => $composableBuilder(
    column: $table.idLatePayment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latePayment => $composableBuilder(
    column: $table.latePayment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cantOverdue => $composableBuilder(
    column: $table.cantOverdue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LatePaymentsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LatePaymentsTableTable> {
  $$LatePaymentsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idLatePayment => $composableBuilder(
    column: $table.idLatePayment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loanId => $composableBuilder(
    column: $table.loanId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latePayment => $composableBuilder(
    column: $table.latePayment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cantOverdue => $composableBuilder(
    column: $table.cantOverdue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LatePaymentsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LatePaymentsTableTable> {
  $$LatePaymentsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idLatePayment => $composableBuilder(
    column: $table.idLatePayment,
    builder: (column) => column,
  );

  GeneratedColumn<String> get loanId =>
      $composableBuilder(column: $table.loanId, builder: (column) => column);

  GeneratedColumn<double> get latePayment => $composableBuilder(
    column: $table.latePayment,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cantOverdue => $composableBuilder(
    column: $table.cantOverdue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$LatePaymentsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LatePaymentsTableTable,
          LatePaymentsTableData,
          $$LatePaymentsTableTableFilterComposer,
          $$LatePaymentsTableTableOrderingComposer,
          $$LatePaymentsTableTableAnnotationComposer,
          $$LatePaymentsTableTableCreateCompanionBuilder,
          $$LatePaymentsTableTableUpdateCompanionBuilder,
          (
            LatePaymentsTableData,
            BaseReferences<
              _$AppDatabase,
              $LatePaymentsTableTable,
              LatePaymentsTableData
            >,
          ),
          LatePaymentsTableData,
          PrefetchHooks Function()
        > {
  $$LatePaymentsTableTableTableManager(
    _$AppDatabase db,
    $LatePaymentsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LatePaymentsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LatePaymentsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LatePaymentsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> idLatePayment = const Value.absent(),
                Value<String> loanId = const Value.absent(),
                Value<double> latePayment = const Value.absent(),
                Value<int> cantOverdue = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LatePaymentsTableCompanion(
                idLatePayment: idLatePayment,
                loanId: loanId,
                latePayment: latePayment,
                cantOverdue: cantOverdue,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idLatePayment,
                required String loanId,
                required double latePayment,
                required int cantOverdue,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => LatePaymentsTableCompanion.insert(
                idLatePayment: idLatePayment,
                loanId: loanId,
                latePayment: latePayment,
                cantOverdue: cantOverdue,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LatePaymentsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LatePaymentsTableTable,
      LatePaymentsTableData,
      $$LatePaymentsTableTableFilterComposer,
      $$LatePaymentsTableTableOrderingComposer,
      $$LatePaymentsTableTableAnnotationComposer,
      $$LatePaymentsTableTableCreateCompanionBuilder,
      $$LatePaymentsTableTableUpdateCompanionBuilder,
      (
        LatePaymentsTableData,
        BaseReferences<
          _$AppDatabase,
          $LatePaymentsTableTable,
          LatePaymentsTableData
        >,
      ),
      LatePaymentsTableData,
      PrefetchHooks Function()
    >;
typedef $$DisbursementTableTableCreateCompanionBuilder =
    DisbursementTableCompanion Function({
      required String disbursementId,
      required String authorizeBy,
      required double amount,
      required DateTime disbursementDate,
      required String disbursementDestination,
      required String comment,
      required String bankAccountId,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$DisbursementTableTableUpdateCompanionBuilder =
    DisbursementTableCompanion Function({
      Value<String> disbursementId,
      Value<String> authorizeBy,
      Value<double> amount,
      Value<DateTime> disbursementDate,
      Value<String> disbursementDestination,
      Value<String> comment,
      Value<String> bankAccountId,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$DisbursementTableTableFilterComposer
    extends Composer<_$AppDatabase, $DisbursementTableTable> {
  $$DisbursementTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get disbursementDate => $composableBuilder(
    column: $table.disbursementDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get disbursementDestination => $composableBuilder(
    column: $table.disbursementDestination,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DisbursementTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DisbursementTableTable> {
  $$DisbursementTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get disbursementDate => $composableBuilder(
    column: $table.disbursementDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get disbursementDestination => $composableBuilder(
    column: $table.disbursementDestination,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DisbursementTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DisbursementTableTable> {
  $$DisbursementTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get disbursementId => $composableBuilder(
    column: $table.disbursementId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get authorizeBy => $composableBuilder(
    column: $table.authorizeBy,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get disbursementDate => $composableBuilder(
    column: $table.disbursementDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get disbursementDestination => $composableBuilder(
    column: $table.disbursementDestination,
    builder: (column) => column,
  );

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$DisbursementTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DisbursementTableTable,
          DisbursementTableData,
          $$DisbursementTableTableFilterComposer,
          $$DisbursementTableTableOrderingComposer,
          $$DisbursementTableTableAnnotationComposer,
          $$DisbursementTableTableCreateCompanionBuilder,
          $$DisbursementTableTableUpdateCompanionBuilder,
          (
            DisbursementTableData,
            BaseReferences<
              _$AppDatabase,
              $DisbursementTableTable,
              DisbursementTableData
            >,
          ),
          DisbursementTableData,
          PrefetchHooks Function()
        > {
  $$DisbursementTableTableTableManager(
    _$AppDatabase db,
    $DisbursementTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DisbursementTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DisbursementTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DisbursementTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> disbursementId = const Value.absent(),
                Value<String> authorizeBy = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<DateTime> disbursementDate = const Value.absent(),
                Value<String> disbursementDestination = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<String> bankAccountId = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DisbursementTableCompanion(
                disbursementId: disbursementId,
                authorizeBy: authorizeBy,
                amount: amount,
                disbursementDate: disbursementDate,
                disbursementDestination: disbursementDestination,
                comment: comment,
                bankAccountId: bankAccountId,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String disbursementId,
                required String authorizeBy,
                required double amount,
                required DateTime disbursementDate,
                required String disbursementDestination,
                required String comment,
                required String bankAccountId,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => DisbursementTableCompanion.insert(
                disbursementId: disbursementId,
                authorizeBy: authorizeBy,
                amount: amount,
                disbursementDate: disbursementDate,
                disbursementDestination: disbursementDestination,
                comment: comment,
                bankAccountId: bankAccountId,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DisbursementTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DisbursementTableTable,
      DisbursementTableData,
      $$DisbursementTableTableFilterComposer,
      $$DisbursementTableTableOrderingComposer,
      $$DisbursementTableTableAnnotationComposer,
      $$DisbursementTableTableCreateCompanionBuilder,
      $$DisbursementTableTableUpdateCompanionBuilder,
      (
        DisbursementTableData,
        BaseReferences<
          _$AppDatabase,
          $DisbursementTableTable,
          DisbursementTableData
        >,
      ),
      DisbursementTableData,
      PrefetchHooks Function()
    >;
typedef $$BankAccountTableTableCreateCompanionBuilder =
    BankAccountTableCompanion Function({
      required String bankAccountId,
      required String accountNumber,
      required String bankId,
      required String currencyId,
      required String accountTypeId,
      required double amount,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$BankAccountTableTableUpdateCompanionBuilder =
    BankAccountTableCompanion Function({
      Value<String> bankAccountId,
      Value<String> accountNumber,
      Value<String> bankId,
      Value<String> currencyId,
      Value<String> accountTypeId,
      Value<double> amount,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$BankAccountTableTableFilterComposer
    extends Composer<_$AppDatabase, $BankAccountTableTable> {
  $$BankAccountTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get accountNumber => $composableBuilder(
    column: $table.accountNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bankId => $composableBuilder(
    column: $table.bankId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get accountTypeId => $composableBuilder(
    column: $table.accountTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BankAccountTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BankAccountTableTable> {
  $$BankAccountTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get accountNumber => $composableBuilder(
    column: $table.accountNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bankId => $composableBuilder(
    column: $table.bankId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get accountTypeId => $composableBuilder(
    column: $table.accountTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BankAccountTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BankAccountTableTable> {
  $$BankAccountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get bankAccountId => $composableBuilder(
    column: $table.bankAccountId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get accountNumber => $composableBuilder(
    column: $table.accountNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bankId =>
      $composableBuilder(column: $table.bankId, builder: (column) => column);

  GeneratedColumn<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get accountTypeId => $composableBuilder(
    column: $table.accountTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$BankAccountTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BankAccountTableTable,
          BankAccountTableData,
          $$BankAccountTableTableFilterComposer,
          $$BankAccountTableTableOrderingComposer,
          $$BankAccountTableTableAnnotationComposer,
          $$BankAccountTableTableCreateCompanionBuilder,
          $$BankAccountTableTableUpdateCompanionBuilder,
          (
            BankAccountTableData,
            BaseReferences<
              _$AppDatabase,
              $BankAccountTableTable,
              BankAccountTableData
            >,
          ),
          BankAccountTableData,
          PrefetchHooks Function()
        > {
  $$BankAccountTableTableTableManager(
    _$AppDatabase db,
    $BankAccountTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BankAccountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BankAccountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BankAccountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> bankAccountId = const Value.absent(),
                Value<String> accountNumber = const Value.absent(),
                Value<String> bankId = const Value.absent(),
                Value<String> currencyId = const Value.absent(),
                Value<String> accountTypeId = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BankAccountTableCompanion(
                bankAccountId: bankAccountId,
                accountNumber: accountNumber,
                bankId: bankId,
                currencyId: currencyId,
                accountTypeId: accountTypeId,
                amount: amount,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String bankAccountId,
                required String accountNumber,
                required String bankId,
                required String currencyId,
                required String accountTypeId,
                required double amount,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => BankAccountTableCompanion.insert(
                bankAccountId: bankAccountId,
                accountNumber: accountNumber,
                bankId: bankId,
                currencyId: currencyId,
                accountTypeId: accountTypeId,
                amount: amount,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BankAccountTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BankAccountTableTable,
      BankAccountTableData,
      $$BankAccountTableTableFilterComposer,
      $$BankAccountTableTableOrderingComposer,
      $$BankAccountTableTableAnnotationComposer,
      $$BankAccountTableTableCreateCompanionBuilder,
      $$BankAccountTableTableUpdateCompanionBuilder,
      (
        BankAccountTableData,
        BaseReferences<
          _$AppDatabase,
          $BankAccountTableTable,
          BankAccountTableData
        >,
      ),
      BankAccountTableData,
      PrefetchHooks Function()
    >;
typedef $$CurrencyTableTableCreateCompanionBuilder =
    CurrencyTableCompanion Function({
      required String currencyId,
      required String currencyType,
      required String currencyDescription,
      required String companyId,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$CurrencyTableTableUpdateCompanionBuilder =
    CurrencyTableCompanion Function({
      Value<String> currencyId,
      Value<String> currencyType,
      Value<String> currencyDescription,
      Value<String> companyId,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$CurrencyTableTableFilterComposer
    extends Composer<_$AppDatabase, $CurrencyTableTable> {
  $$CurrencyTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currencyType => $composableBuilder(
    column: $table.currencyType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currencyDescription => $composableBuilder(
    column: $table.currencyDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CurrencyTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CurrencyTableTable> {
  $$CurrencyTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currencyType => $composableBuilder(
    column: $table.currencyType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currencyDescription => $composableBuilder(
    column: $table.currencyDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CurrencyTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CurrencyTableTable> {
  $$CurrencyTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get currencyId => $composableBuilder(
    column: $table.currencyId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currencyType => $composableBuilder(
    column: $table.currencyType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currencyDescription => $composableBuilder(
    column: $table.currencyDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$CurrencyTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CurrencyTableTable,
          CurrencyTableData,
          $$CurrencyTableTableFilterComposer,
          $$CurrencyTableTableOrderingComposer,
          $$CurrencyTableTableAnnotationComposer,
          $$CurrencyTableTableCreateCompanionBuilder,
          $$CurrencyTableTableUpdateCompanionBuilder,
          (
            CurrencyTableData,
            BaseReferences<
              _$AppDatabase,
              $CurrencyTableTable,
              CurrencyTableData
            >,
          ),
          CurrencyTableData,
          PrefetchHooks Function()
        > {
  $$CurrencyTableTableTableManager(_$AppDatabase db, $CurrencyTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurrencyTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurrencyTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CurrencyTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> currencyId = const Value.absent(),
                Value<String> currencyType = const Value.absent(),
                Value<String> currencyDescription = const Value.absent(),
                Value<String> companyId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CurrencyTableCompanion(
                currencyId: currencyId,
                currencyType: currencyType,
                currencyDescription: currencyDescription,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String currencyId,
                required String currencyType,
                required String currencyDescription,
                required String companyId,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => CurrencyTableCompanion.insert(
                currencyId: currencyId,
                currencyType: currencyType,
                currencyDescription: currencyDescription,
                companyId: companyId,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CurrencyTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CurrencyTableTable,
      CurrencyTableData,
      $$CurrencyTableTableFilterComposer,
      $$CurrencyTableTableOrderingComposer,
      $$CurrencyTableTableAnnotationComposer,
      $$CurrencyTableTableCreateCompanionBuilder,
      $$CurrencyTableTableUpdateCompanionBuilder,
      (
        CurrencyTableData,
        BaseReferences<_$AppDatabase, $CurrencyTableTable, CurrencyTableData>,
      ),
      CurrencyTableData,
      PrefetchHooks Function()
    >;
typedef $$CompanyTableTableCreateCompanionBuilder =
    CompanyTableCompanion Function({
      required String companyId,
      Value<String?> membershipId,
      required String name,
      Value<String?> slogan,
      Value<int?> rnc,
      Value<String?> address,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> logo,
      required bool isFinancial,
      required bool isActive,
      required DateTime createdDate,
      Value<String?> userId,
      Value<int> rowid,
    });
typedef $$CompanyTableTableUpdateCompanionBuilder =
    CompanyTableCompanion Function({
      Value<String> companyId,
      Value<String?> membershipId,
      Value<String> name,
      Value<String?> slogan,
      Value<int?> rnc,
      Value<String?> address,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> logo,
      Value<bool> isFinancial,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String?> userId,
      Value<int> rowid,
    });

class $$CompanyTableTableFilterComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slogan => $composableBuilder(
    column: $table.slogan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rnc => $composableBuilder(
    column: $table.rnc,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get logo => $composableBuilder(
    column: $table.logo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFinancial => $composableBuilder(
    column: $table.isFinancial,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CompanyTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slogan => $composableBuilder(
    column: $table.slogan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rnc => $composableBuilder(
    column: $table.rnc,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get logo => $composableBuilder(
    column: $table.logo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFinancial => $composableBuilder(
    column: $table.isFinancial,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CompanyTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get slogan =>
      $composableBuilder(column: $table.slogan, builder: (column) => column);

  GeneratedColumn<int> get rnc =>
      $composableBuilder(column: $table.rnc, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get logo =>
      $composableBuilder(column: $table.logo, builder: (column) => column);

  GeneratedColumn<bool> get isFinancial => $composableBuilder(
    column: $table.isFinancial,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$CompanyTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CompanyTableTable,
          CompanyTableData,
          $$CompanyTableTableFilterComposer,
          $$CompanyTableTableOrderingComposer,
          $$CompanyTableTableAnnotationComposer,
          $$CompanyTableTableCreateCompanionBuilder,
          $$CompanyTableTableUpdateCompanionBuilder,
          (
            CompanyTableData,
            BaseReferences<_$AppDatabase, $CompanyTableTable, CompanyTableData>,
          ),
          CompanyTableData,
          PrefetchHooks Function()
        > {
  $$CompanyTableTableTableManager(_$AppDatabase db, $CompanyTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompanyTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CompanyTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompanyTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> companyId = const Value.absent(),
                Value<String?> membershipId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> slogan = const Value.absent(),
                Value<int?> rnc = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> logo = const Value.absent(),
                Value<bool> isFinancial = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String?> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompanyTableCompanion(
                companyId: companyId,
                membershipId: membershipId,
                name: name,
                slogan: slogan,
                rnc: rnc,
                address: address,
                phone: phone,
                email: email,
                logo: logo,
                isFinancial: isFinancial,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String companyId,
                Value<String?> membershipId = const Value.absent(),
                required String name,
                Value<String?> slogan = const Value.absent(),
                Value<int?> rnc = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> logo = const Value.absent(),
                required bool isFinancial,
                required bool isActive,
                required DateTime createdDate,
                Value<String?> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompanyTableCompanion.insert(
                companyId: companyId,
                membershipId: membershipId,
                name: name,
                slogan: slogan,
                rnc: rnc,
                address: address,
                phone: phone,
                email: email,
                logo: logo,
                isFinancial: isFinancial,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CompanyTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CompanyTableTable,
      CompanyTableData,
      $$CompanyTableTableFilterComposer,
      $$CompanyTableTableOrderingComposer,
      $$CompanyTableTableAnnotationComposer,
      $$CompanyTableTableCreateCompanionBuilder,
      $$CompanyTableTableUpdateCompanionBuilder,
      (
        CompanyTableData,
        BaseReferences<_$AppDatabase, $CompanyTableTable, CompanyTableData>,
      ),
      CompanyTableData,
      PrefetchHooks Function()
    >;
typedef $$MembershipTableTableCreateCompanionBuilder =
    MembershipTableCompanion Function({
      required String membershipId,
      required String name,
      required String description,
      required double price,
      required bool isActive,
      required DateTime createdDate,
      Value<int> rowid,
    });
typedef $$MembershipTableTableUpdateCompanionBuilder =
    MembershipTableCompanion Function({
      Value<String> membershipId,
      Value<String> name,
      Value<String> description,
      Value<double> price,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<int> rowid,
    });

class $$MembershipTableTableFilterComposer
    extends Composer<_$AppDatabase, $MembershipTableTable> {
  $$MembershipTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MembershipTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MembershipTableTable> {
  $$MembershipTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MembershipTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MembershipTableTable> {
  $$MembershipTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get membershipId => $composableBuilder(
    column: $table.membershipId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );
}

class $$MembershipTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MembershipTableTable,
          MembershipTableData,
          $$MembershipTableTableFilterComposer,
          $$MembershipTableTableOrderingComposer,
          $$MembershipTableTableAnnotationComposer,
          $$MembershipTableTableCreateCompanionBuilder,
          $$MembershipTableTableUpdateCompanionBuilder,
          (
            MembershipTableData,
            BaseReferences<
              _$AppDatabase,
              $MembershipTableTable,
              MembershipTableData
            >,
          ),
          MembershipTableData,
          PrefetchHooks Function()
        > {
  $$MembershipTableTableTableManager(
    _$AppDatabase db,
    $MembershipTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MembershipTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MembershipTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MembershipTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> membershipId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MembershipTableCompanion(
                membershipId: membershipId,
                name: name,
                description: description,
                price: price,
                isActive: isActive,
                createdDate: createdDate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String membershipId,
                required String name,
                required String description,
                required double price,
                required bool isActive,
                required DateTime createdDate,
                Value<int> rowid = const Value.absent(),
              }) => MembershipTableCompanion.insert(
                membershipId: membershipId,
                name: name,
                description: description,
                price: price,
                isActive: isActive,
                createdDate: createdDate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MembershipTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MembershipTableTable,
      MembershipTableData,
      $$MembershipTableTableFilterComposer,
      $$MembershipTableTableOrderingComposer,
      $$MembershipTableTableAnnotationComposer,
      $$MembershipTableTableCreateCompanionBuilder,
      $$MembershipTableTableUpdateCompanionBuilder,
      (
        MembershipTableData,
        BaseReferences<
          _$AppDatabase,
          $MembershipTableTable,
          MembershipTableData
        >,
      ),
      MembershipTableData,
      PrefetchHooks Function()
    >;
typedef $$ProvincesTableTableCreateCompanionBuilder =
    ProvincesTableCompanion Function({
      required String provinceId,
      required String provinceName,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$ProvincesTableTableUpdateCompanionBuilder =
    ProvincesTableCompanion Function({
      Value<String> provinceId,
      Value<String> provinceName,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$ProvincesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProvincesTableTable> {
  $$ProvincesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get provinceId => $composableBuilder(
    column: $table.provinceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get provinceName => $composableBuilder(
    column: $table.provinceName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProvincesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProvincesTableTable> {
  $$ProvincesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get provinceId => $composableBuilder(
    column: $table.provinceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get provinceName => $composableBuilder(
    column: $table.provinceName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProvincesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProvincesTableTable> {
  $$ProvincesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get provinceId => $composableBuilder(
    column: $table.provinceId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get provinceName => $composableBuilder(
    column: $table.provinceName,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$ProvincesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProvincesTableTable,
          ProvincesTableData,
          $$ProvincesTableTableFilterComposer,
          $$ProvincesTableTableOrderingComposer,
          $$ProvincesTableTableAnnotationComposer,
          $$ProvincesTableTableCreateCompanionBuilder,
          $$ProvincesTableTableUpdateCompanionBuilder,
          (
            ProvincesTableData,
            BaseReferences<
              _$AppDatabase,
              $ProvincesTableTable,
              ProvincesTableData
            >,
          ),
          ProvincesTableData,
          PrefetchHooks Function()
        > {
  $$ProvincesTableTableTableManager(
    _$AppDatabase db,
    $ProvincesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProvincesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProvincesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProvincesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> provinceId = const Value.absent(),
                Value<String> provinceName = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProvincesTableCompanion(
                provinceId: provinceId,
                provinceName: provinceName,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String provinceId,
                required String provinceName,
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => ProvincesTableCompanion.insert(
                provinceId: provinceId,
                provinceName: provinceName,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProvincesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProvincesTableTable,
      ProvincesTableData,
      $$ProvincesTableTableFilterComposer,
      $$ProvincesTableTableOrderingComposer,
      $$ProvincesTableTableAnnotationComposer,
      $$ProvincesTableTableCreateCompanionBuilder,
      $$ProvincesTableTableUpdateCompanionBuilder,
      (
        ProvincesTableData,
        BaseReferences<_$AppDatabase, $ProvincesTableTable, ProvincesTableData>,
      ),
      ProvincesTableData,
      PrefetchHooks Function()
    >;
typedef $$GenderTableTableCreateCompanionBuilder =
    GenderTableCompanion Function({
      required String idGender,
      Value<String?> description,
      required bool isActive,
      required DateTime createdDate,
      required String userId,
      Value<int> rowid,
    });
typedef $$GenderTableTableUpdateCompanionBuilder =
    GenderTableCompanion Function({
      Value<String> idGender,
      Value<String?> description,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<String> userId,
      Value<int> rowid,
    });

class $$GenderTableTableFilterComposer
    extends Composer<_$AppDatabase, $GenderTableTable> {
  $$GenderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get idGender => $composableBuilder(
    column: $table.idGender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GenderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $GenderTableTable> {
  $$GenderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get idGender => $composableBuilder(
    column: $table.idGender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GenderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $GenderTableTable> {
  $$GenderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get idGender =>
      $composableBuilder(column: $table.idGender, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$GenderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GenderTableTable,
          GenderTableData,
          $$GenderTableTableFilterComposer,
          $$GenderTableTableOrderingComposer,
          $$GenderTableTableAnnotationComposer,
          $$GenderTableTableCreateCompanionBuilder,
          $$GenderTableTableUpdateCompanionBuilder,
          (
            GenderTableData,
            BaseReferences<_$AppDatabase, $GenderTableTable, GenderTableData>,
          ),
          GenderTableData,
          PrefetchHooks Function()
        > {
  $$GenderTableTableTableManager(_$AppDatabase db, $GenderTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GenderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GenderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GenderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> idGender = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GenderTableCompanion(
                idGender: idGender,
                description: description,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String idGender,
                Value<String?> description = const Value.absent(),
                required bool isActive,
                required DateTime createdDate,
                required String userId,
                Value<int> rowid = const Value.absent(),
              }) => GenderTableCompanion.insert(
                idGender: idGender,
                description: description,
                isActive: isActive,
                createdDate: createdDate,
                userId: userId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GenderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GenderTableTable,
      GenderTableData,
      $$GenderTableTableFilterComposer,
      $$GenderTableTableOrderingComposer,
      $$GenderTableTableAnnotationComposer,
      $$GenderTableTableCreateCompanionBuilder,
      $$GenderTableTableUpdateCompanionBuilder,
      (
        GenderTableData,
        BaseReferences<_$AppDatabase, $GenderTableTable, GenderTableData>,
      ),
      GenderTableData,
      PrefetchHooks Function()
    >;
typedef $$AspNetUsersProfileTableTableCreateCompanionBuilder =
    AspNetUsersProfileTableCompanion Function({
      required String profileId,
      required String userId,
      required String firstName,
      required String lastName,
      required String email,
      required String phone,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<int> rowid,
    });
typedef $$AspNetUsersProfileTableTableUpdateCompanionBuilder =
    AspNetUsersProfileTableCompanion Function({
      Value<String> profileId,
      Value<String> userId,
      Value<String> firstName,
      Value<String> lastName,
      Value<String> email,
      Value<String> phone,
      Value<bool> isActive,
      Value<DateTime> createdDate,
      Value<int> rowid,
    });

class $$AspNetUsersProfileTableTableFilterComposer
    extends Composer<_$AppDatabase, $AspNetUsersProfileTableTable> {
  $$AspNetUsersProfileTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AspNetUsersProfileTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AspNetUsersProfileTableTable> {
  $$AspNetUsersProfileTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AspNetUsersProfileTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AspNetUsersProfileTableTable> {
  $$AspNetUsersProfileTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get profileId =>
      $composableBuilder(column: $table.profileId, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
    column: $table.createdDate,
    builder: (column) => column,
  );
}

class $$AspNetUsersProfileTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AspNetUsersProfileTableTable,
          AspNetUsersProfileTableData,
          $$AspNetUsersProfileTableTableFilterComposer,
          $$AspNetUsersProfileTableTableOrderingComposer,
          $$AspNetUsersProfileTableTableAnnotationComposer,
          $$AspNetUsersProfileTableTableCreateCompanionBuilder,
          $$AspNetUsersProfileTableTableUpdateCompanionBuilder,
          (
            AspNetUsersProfileTableData,
            BaseReferences<
              _$AppDatabase,
              $AspNetUsersProfileTableTable,
              AspNetUsersProfileTableData
            >,
          ),
          AspNetUsersProfileTableData,
          PrefetchHooks Function()
        > {
  $$AspNetUsersProfileTableTableTableManager(
    _$AppDatabase db,
    $AspNetUsersProfileTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AspNetUsersProfileTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$AspNetUsersProfileTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$AspNetUsersProfileTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> profileId = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> firstName = const Value.absent(),
                Value<String> lastName = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AspNetUsersProfileTableCompanion(
                profileId: profileId,
                userId: userId,
                firstName: firstName,
                lastName: lastName,
                email: email,
                phone: phone,
                isActive: isActive,
                createdDate: createdDate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String profileId,
                required String userId,
                required String firstName,
                required String lastName,
                required String email,
                required String phone,
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AspNetUsersProfileTableCompanion.insert(
                profileId: profileId,
                userId: userId,
                firstName: firstName,
                lastName: lastName,
                email: email,
                phone: phone,
                isActive: isActive,
                createdDate: createdDate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AspNetUsersProfileTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AspNetUsersProfileTableTable,
      AspNetUsersProfileTableData,
      $$AspNetUsersProfileTableTableFilterComposer,
      $$AspNetUsersProfileTableTableOrderingComposer,
      $$AspNetUsersProfileTableTableAnnotationComposer,
      $$AspNetUsersProfileTableTableCreateCompanionBuilder,
      $$AspNetUsersProfileTableTableUpdateCompanionBuilder,
      (
        AspNetUsersProfileTableData,
        BaseReferences<
          _$AppDatabase,
          $AspNetUsersProfileTableTable,
          AspNetUsersProfileTableData
        >,
      ),
      AspNetUsersProfileTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClientesTableTableTableManager get clientesTable =>
      $$ClientesTableTableTableManager(_db, _db.clientesTable);
  $$ClientContactTableTableTableManager get clientContactTable =>
      $$ClientContactTableTableTableManager(_db, _db.clientContactTable);
  $$ClientJobTableTableTableManager get clientJobTable =>
      $$ClientJobTableTableTableManager(_db, _db.clientJobTable);
  $$AddressTableTableTableManager get addressTable =>
      $$AddressTableTableTableManager(_db, _db.addressTable);
  $$ClientAddressTableTableTableManager get clientAddressTable =>
      $$ClientAddressTableTableTableManager(_db, _db.clientAddressTable);
  $$IdentificationTypeTableTableTableManager get identificationTypeTable =>
      $$IdentificationTypeTableTableTableManager(
        _db,
        _db.identificationTypeTable,
      );
  $$LoanTableTableTableManager get loanTable =>
      $$LoanTableTableTableManager(_db, _db.loanTable);
  $$LoanAuthorizationTableTableTableManager get loanAuthorizationTable =>
      $$LoanAuthorizationTableTableTableManager(
        _db,
        _db.loanAuthorizationTable,
      );
  $$LoanStateTableTableTableManager get loanStateTable =>
      $$LoanStateTableTableTableManager(_db, _db.loanStateTable);
  $$LoanTermTableTableTableManager get loanTermTable =>
      $$LoanTermTableTableTableManager(_db, _db.loanTermTable);
  $$LoanTypeTableTableTableManager get loanTypeTable =>
      $$LoanTypeTableTableTableManager(_db, _db.loanTypeTable);
  $$PaymentsTableTableTableManager get paymentsTable =>
      $$PaymentsTableTableTableManager(_db, _db.paymentsTable);
  $$LatePaymentsTableTableTableManager get latePaymentsTable =>
      $$LatePaymentsTableTableTableManager(_db, _db.latePaymentsTable);
  $$DisbursementTableTableTableManager get disbursementTable =>
      $$DisbursementTableTableTableManager(_db, _db.disbursementTable);
  $$BankAccountTableTableTableManager get bankAccountTable =>
      $$BankAccountTableTableTableManager(_db, _db.bankAccountTable);
  $$CurrencyTableTableTableManager get currencyTable =>
      $$CurrencyTableTableTableManager(_db, _db.currencyTable);
  $$CompanyTableTableTableManager get companyTable =>
      $$CompanyTableTableTableManager(_db, _db.companyTable);
  $$MembershipTableTableTableManager get membershipTable =>
      $$MembershipTableTableTableManager(_db, _db.membershipTable);
  $$ProvincesTableTableTableManager get provincesTable =>
      $$ProvincesTableTableTableManager(_db, _db.provincesTable);
  $$GenderTableTableTableManager get genderTable =>
      $$GenderTableTableTableManager(_db, _db.genderTable);
  $$AspNetUsersProfileTableTableTableManager get aspNetUsersProfileTable =>
      $$AspNetUsersProfileTableTableTableManager(
        _db,
        _db.aspNetUsersProfileTable,
      );
}
