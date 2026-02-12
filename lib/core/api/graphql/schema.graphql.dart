class Input$LoginInput {
  factory Input$LoginInput({
    required String userName,
    required String password,
  }) => Input$LoginInput._({r'userName': userName, r'password': password});

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userName = data['userName'];
    result$data['userName'] = (l$userName as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userName => (_$data['userName'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userName = userName;
    result$data['userName'] = l$userName;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$password = password;
    return Object.hashAll([l$userName, l$password]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({String? userName, String? password});
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(this._instance, this._then);

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userName = _undefined, Object? password = _undefined}) =>
      _then(
        Input$LoginInput._({
          ..._instance._$data,
          if (userName != _undefined && userName != null)
            'userName': (userName as String),
          if (password != _undefined && password != null)
            'password': (password as String),
        }),
      );
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({String? userName, String? password}) => _res;
}

class Input$GetClientDtoSortInput {
  factory Input$GetClientDtoSortInput({String? field, String? dir}) =>
      Input$GetClientDtoSortInput._({
        if (field != null) r'field': field,
        if (dir != null) r'dir': dir,
      });

  Input$GetClientDtoSortInput._(this._$data);

  factory Input$GetClientDtoSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('field')) {
      final l$field = data['field'];
      result$data['field'] = (l$field as String?);
    }
    if (data.containsKey('dir')) {
      final l$dir = data['dir'];
      result$data['dir'] = (l$dir as String?);
    }
    return Input$GetClientDtoSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get field => (_$data['field'] as String?);

  String? get dir => (_$data['dir'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('field')) {
      final l$field = field;
      result$data['field'] = l$field;
    }
    if (_$data.containsKey('dir')) {
      final l$dir = dir;
      result$data['dir'] = l$dir;
    }
    return result$data;
  }

  CopyWith$Input$GetClientDtoSortInput<Input$GetClientDtoSortInput>
  get copyWith => CopyWith$Input$GetClientDtoSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetClientDtoSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (_$data.containsKey('field') != other._$data.containsKey('field')) {
      return false;
    }
    if (l$field != lOther$field) {
      return false;
    }
    final l$dir = dir;
    final lOther$dir = other.dir;
    if (_$data.containsKey('dir') != other._$data.containsKey('dir')) {
      return false;
    }
    if (l$dir != lOther$dir) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$dir = dir;
    return Object.hashAll([
      _$data.containsKey('field') ? l$field : const {},
      _$data.containsKey('dir') ? l$dir : const {},
    ]);
  }
}

abstract class CopyWith$Input$GetClientDtoSortInput<TRes> {
  factory CopyWith$Input$GetClientDtoSortInput(
    Input$GetClientDtoSortInput instance,
    TRes Function(Input$GetClientDtoSortInput) then,
  ) = _CopyWithImpl$Input$GetClientDtoSortInput;

  factory CopyWith$Input$GetClientDtoSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetClientDtoSortInput;

  TRes call({String? field, String? dir});
}

class _CopyWithImpl$Input$GetClientDtoSortInput<TRes>
    implements CopyWith$Input$GetClientDtoSortInput<TRes> {
  _CopyWithImpl$Input$GetClientDtoSortInput(this._instance, this._then);

  final Input$GetClientDtoSortInput _instance;

  final TRes Function(Input$GetClientDtoSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? field = _undefined, Object? dir = _undefined}) => _then(
    Input$GetClientDtoSortInput._({
      ..._instance._$data,
      if (field != _undefined) 'field': (field as String?),
      if (dir != _undefined) 'dir': (dir as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$GetClientDtoSortInput<TRes>
    implements CopyWith$Input$GetClientDtoSortInput<TRes> {
  _CopyWithStubImpl$Input$GetClientDtoSortInput(this._res);

  TRes _res;

  call({String? field, String? dir}) => _res;
}

class Input$GetClientDtoFilterInput {
  factory Input$GetClientDtoFilterInput({String? search}) =>
      Input$GetClientDtoFilterInput._({if (search != null) r'search': search});

  Input$GetClientDtoFilterInput._(this._$data);

  factory Input$GetClientDtoFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Input$GetClientDtoFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Input$GetClientDtoFilterInput<Input$GetClientDtoFilterInput>
  get copyWith => CopyWith$Input$GetClientDtoFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetClientDtoFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    return Object.hashAll([_$data.containsKey('search') ? l$search : const {}]);
  }
}

abstract class CopyWith$Input$GetClientDtoFilterInput<TRes> {
  factory CopyWith$Input$GetClientDtoFilterInput(
    Input$GetClientDtoFilterInput instance,
    TRes Function(Input$GetClientDtoFilterInput) then,
  ) = _CopyWithImpl$Input$GetClientDtoFilterInput;

  factory CopyWith$Input$GetClientDtoFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetClientDtoFilterInput;

  TRes call({String? search});
}

class _CopyWithImpl$Input$GetClientDtoFilterInput<TRes>
    implements CopyWith$Input$GetClientDtoFilterInput<TRes> {
  _CopyWithImpl$Input$GetClientDtoFilterInput(this._instance, this._then);

  final Input$GetClientDtoFilterInput _instance;

  final TRes Function(Input$GetClientDtoFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? search = _undefined}) => _then(
    Input$GetClientDtoFilterInput._({
      ..._instance._$data,
      if (search != _undefined) 'search': (search as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$GetClientDtoFilterInput<TRes>
    implements CopyWith$Input$GetClientDtoFilterInput<TRes> {
  _CopyWithStubImpl$Input$GetClientDtoFilterInput(this._res);

  TRes _res;

  call({String? search}) => _res;
}

class Input$CreateClientViewModelInput {
  factory Input$CreateClientViewModelInput({
    String? name,
    String? lastName,
    String? genderId,
    String? identificationTypeId,
    String? identification,
    String? birthDay,
    String? phone,
    String? email,
    List<Input$AddressInput?>? addresses,
    List<Input$JobInput?>? jobs,
    List<Input$RelatedInput?>? related,
  }) => Input$CreateClientViewModelInput._({
    if (name != null) r'name': name,
    if (lastName != null) r'lastName': lastName,
    if (genderId != null) r'genderId': genderId,
    if (identificationTypeId != null)
      r'identificationTypeId': identificationTypeId,
    if (identification != null) r'identification': identification,
    if (birthDay != null) r'birthDay': birthDay,
    if (phone != null) r'phone': phone,
    if (email != null) r'email': email,
    if (addresses != null) r'addresses': addresses,
    if (jobs != null) r'jobs': jobs,
    if (related != null) r'related': related,
  });

  Input$CreateClientViewModelInput._(this._$data);

  factory Input$CreateClientViewModelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('genderId')) {
      final l$genderId = data['genderId'];
      result$data['genderId'] = (l$genderId as String?);
    }
    if (data.containsKey('identificationTypeId')) {
      final l$identificationTypeId = data['identificationTypeId'];
      result$data['identificationTypeId'] = (l$identificationTypeId as String?);
    }
    if (data.containsKey('identification')) {
      final l$identification = data['identification'];
      result$data['identification'] = (l$identification as String?);
    }
    if (data.containsKey('birthDay')) {
      final l$birthDay = data['birthDay'];
      result$data['birthDay'] = (l$birthDay as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = (l$addresses as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$AddressInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('jobs')) {
      final l$jobs = data['jobs'];
      result$data['jobs'] = (l$jobs as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$JobInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('related')) {
      final l$related = data['related'];
      result$data['related'] = (l$related as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Input$RelatedInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Input$CreateClientViewModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get genderId => (_$data['genderId'] as String?);

  String? get identificationTypeId =>
      (_$data['identificationTypeId'] as String?);

  String? get identification => (_$data['identification'] as String?);

  String? get birthDay => (_$data['birthDay'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get email => (_$data['email'] as String?);

  List<Input$AddressInput?>? get addresses =>
      (_$data['addresses'] as List<Input$AddressInput?>?);

  List<Input$JobInput?>? get jobs => (_$data['jobs'] as List<Input$JobInput?>?);

  List<Input$RelatedInput?>? get related =>
      (_$data['related'] as List<Input$RelatedInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('genderId')) {
      final l$genderId = genderId;
      result$data['genderId'] = l$genderId;
    }
    if (_$data.containsKey('identificationTypeId')) {
      final l$identificationTypeId = identificationTypeId;
      result$data['identificationTypeId'] = l$identificationTypeId;
    }
    if (_$data.containsKey('identification')) {
      final l$identification = identification;
      result$data['identification'] = l$identification;
    }
    if (_$data.containsKey('birthDay')) {
      final l$birthDay = birthDay;
      result$data['birthDay'] = l$birthDay;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('jobs')) {
      final l$jobs = jobs;
      result$data['jobs'] = l$jobs?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('related')) {
      final l$related = related;
      result$data['related'] = l$related?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateClientViewModelInput<Input$CreateClientViewModelInput>
  get copyWith => CopyWith$Input$CreateClientViewModelInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateClientViewModelInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$genderId = genderId;
    final lOther$genderId = other.genderId;
    if (_$data.containsKey('genderId') !=
        other._$data.containsKey('genderId')) {
      return false;
    }
    if (l$genderId != lOther$genderId) {
      return false;
    }
    final l$identificationTypeId = identificationTypeId;
    final lOther$identificationTypeId = other.identificationTypeId;
    if (_$data.containsKey('identificationTypeId') !=
        other._$data.containsKey('identificationTypeId')) {
      return false;
    }
    if (l$identificationTypeId != lOther$identificationTypeId) {
      return false;
    }
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (_$data.containsKey('identification') !=
        other._$data.containsKey('identification')) {
      return false;
    }
    if (l$identification != lOther$identification) {
      return false;
    }
    final l$birthDay = birthDay;
    final lOther$birthDay = other.birthDay;
    if (_$data.containsKey('birthDay') !=
        other._$data.containsKey('birthDay')) {
      return false;
    }
    if (l$birthDay != lOther$birthDay) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (_$data.containsKey('addresses') !=
        other._$data.containsKey('addresses')) {
      return false;
    }
    if (l$addresses != null && lOther$addresses != null) {
      if (l$addresses.length != lOther$addresses.length) {
        return false;
      }
      for (int i = 0; i < l$addresses.length; i++) {
        final l$addresses$entry = l$addresses[i];
        final lOther$addresses$entry = lOther$addresses[i];
        if (l$addresses$entry != lOther$addresses$entry) {
          return false;
        }
      }
    } else if (l$addresses != lOther$addresses) {
      return false;
    }
    final l$jobs = jobs;
    final lOther$jobs = other.jobs;
    if (_$data.containsKey('jobs') != other._$data.containsKey('jobs')) {
      return false;
    }
    if (l$jobs != null && lOther$jobs != null) {
      if (l$jobs.length != lOther$jobs.length) {
        return false;
      }
      for (int i = 0; i < l$jobs.length; i++) {
        final l$jobs$entry = l$jobs[i];
        final lOther$jobs$entry = lOther$jobs[i];
        if (l$jobs$entry != lOther$jobs$entry) {
          return false;
        }
      }
    } else if (l$jobs != lOther$jobs) {
      return false;
    }
    final l$related = related;
    final lOther$related = other.related;
    if (_$data.containsKey('related') != other._$data.containsKey('related')) {
      return false;
    }
    if (l$related != null && lOther$related != null) {
      if (l$related.length != lOther$related.length) {
        return false;
      }
      for (int i = 0; i < l$related.length; i++) {
        final l$related$entry = l$related[i];
        final lOther$related$entry = lOther$related[i];
        if (l$related$entry != lOther$related$entry) {
          return false;
        }
      }
    } else if (l$related != lOther$related) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$lastName = lastName;
    final l$genderId = genderId;
    final l$identificationTypeId = identificationTypeId;
    final l$identification = identification;
    final l$birthDay = birthDay;
    final l$phone = phone;
    final l$email = email;
    final l$addresses = addresses;
    final l$jobs = jobs;
    final l$related = related;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('genderId') ? l$genderId : const {},
      _$data.containsKey('identificationTypeId')
          ? l$identificationTypeId
          : const {},
      _$data.containsKey('identification') ? l$identification : const {},
      _$data.containsKey('birthDay') ? l$birthDay : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('addresses')
          ? l$addresses == null
                ? null
                : Object.hashAll(l$addresses.map((v) => v))
          : const {},
      _$data.containsKey('jobs')
          ? l$jobs == null
                ? null
                : Object.hashAll(l$jobs.map((v) => v))
          : const {},
      _$data.containsKey('related')
          ? l$related == null
                ? null
                : Object.hashAll(l$related.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateClientViewModelInput<TRes> {
  factory CopyWith$Input$CreateClientViewModelInput(
    Input$CreateClientViewModelInput instance,
    TRes Function(Input$CreateClientViewModelInput) then,
  ) = _CopyWithImpl$Input$CreateClientViewModelInput;

  factory CopyWith$Input$CreateClientViewModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateClientViewModelInput;

  TRes call({
    String? name,
    String? lastName,
    String? genderId,
    String? identificationTypeId,
    String? identification,
    String? birthDay,
    String? phone,
    String? email,
    List<Input$AddressInput?>? addresses,
    List<Input$JobInput?>? jobs,
    List<Input$RelatedInput?>? related,
  });
  TRes addresses(
    Iterable<Input$AddressInput?>? Function(
      Iterable<CopyWith$Input$AddressInput<Input$AddressInput>?>?,
    )
    _fn,
  );
  TRes jobs(
    Iterable<Input$JobInput?>? Function(
      Iterable<CopyWith$Input$JobInput<Input$JobInput>?>?,
    )
    _fn,
  );
  TRes related(
    Iterable<Input$RelatedInput?>? Function(
      Iterable<CopyWith$Input$RelatedInput<Input$RelatedInput>?>?,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$CreateClientViewModelInput<TRes>
    implements CopyWith$Input$CreateClientViewModelInput<TRes> {
  _CopyWithImpl$Input$CreateClientViewModelInput(this._instance, this._then);

  final Input$CreateClientViewModelInput _instance;

  final TRes Function(Input$CreateClientViewModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? lastName = _undefined,
    Object? genderId = _undefined,
    Object? identificationTypeId = _undefined,
    Object? identification = _undefined,
    Object? birthDay = _undefined,
    Object? phone = _undefined,
    Object? email = _undefined,
    Object? addresses = _undefined,
    Object? jobs = _undefined,
    Object? related = _undefined,
  }) => _then(
    Input$CreateClientViewModelInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (lastName != _undefined) 'lastName': (lastName as String?),
      if (genderId != _undefined) 'genderId': (genderId as String?),
      if (identificationTypeId != _undefined)
        'identificationTypeId': (identificationTypeId as String?),
      if (identification != _undefined)
        'identification': (identification as String?),
      if (birthDay != _undefined) 'birthDay': (birthDay as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (email != _undefined) 'email': (email as String?),
      if (addresses != _undefined)
        'addresses': (addresses as List<Input$AddressInput?>?),
      if (jobs != _undefined) 'jobs': (jobs as List<Input$JobInput?>?),
      if (related != _undefined)
        'related': (related as List<Input$RelatedInput?>?),
    }),
  );

  TRes addresses(
    Iterable<Input$AddressInput?>? Function(
      Iterable<CopyWith$Input$AddressInput<Input$AddressInput>?>?,
    )
    _fn,
  ) => call(
    addresses: _fn(
      _instance.addresses?.map(
        (e) => e == null ? null : CopyWith$Input$AddressInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes jobs(
    Iterable<Input$JobInput?>? Function(
      Iterable<CopyWith$Input$JobInput<Input$JobInput>?>?,
    )
    _fn,
  ) => call(
    jobs: _fn(
      _instance.jobs?.map(
        (e) => e == null ? null : CopyWith$Input$JobInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes related(
    Iterable<Input$RelatedInput?>? Function(
      Iterable<CopyWith$Input$RelatedInput<Input$RelatedInput>?>?,
    )
    _fn,
  ) => call(
    related: _fn(
      _instance.related?.map(
        (e) => e == null ? null : CopyWith$Input$RelatedInput(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Input$CreateClientViewModelInput<TRes>
    implements CopyWith$Input$CreateClientViewModelInput<TRes> {
  _CopyWithStubImpl$Input$CreateClientViewModelInput(this._res);

  TRes _res;

  call({
    String? name,
    String? lastName,
    String? genderId,
    String? identificationTypeId,
    String? identification,
    String? birthDay,
    String? phone,
    String? email,
    List<Input$AddressInput?>? addresses,
    List<Input$JobInput?>? jobs,
    List<Input$RelatedInput?>? related,
  }) => _res;

  addresses(_fn) => _res;

  jobs(_fn) => _res;

  related(_fn) => _res;
}

class Input$AddressInput {
  factory Input$AddressInput({String? id}) =>
      Input$AddressInput._({if (id != null) r'id': id});

  Input$AddressInput._(this._$data);

  factory Input$AddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$AddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$AddressInput<Input$AddressInput> get copyWith =>
      CopyWith$Input$AddressInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddressInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$AddressInput<TRes> {
  factory CopyWith$Input$AddressInput(
    Input$AddressInput instance,
    TRes Function(Input$AddressInput) then,
  ) = _CopyWithImpl$Input$AddressInput;

  factory CopyWith$Input$AddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddressInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$AddressInput<TRes>
    implements CopyWith$Input$AddressInput<TRes> {
  _CopyWithImpl$Input$AddressInput(this._instance, this._then);

  final Input$AddressInput _instance;

  final TRes Function(Input$AddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$AddressInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$AddressInput<TRes>
    implements CopyWith$Input$AddressInput<TRes> {
  _CopyWithStubImpl$Input$AddressInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$JobInput {
  factory Input$JobInput({String? id}) =>
      Input$JobInput._({if (id != null) r'id': id});

  Input$JobInput._(this._$data);

  factory Input$JobInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$JobInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$JobInput<Input$JobInput> get copyWith =>
      CopyWith$Input$JobInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$JobInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$JobInput<TRes> {
  factory CopyWith$Input$JobInput(
    Input$JobInput instance,
    TRes Function(Input$JobInput) then,
  ) = _CopyWithImpl$Input$JobInput;

  factory CopyWith$Input$JobInput.stub(TRes res) =
      _CopyWithStubImpl$Input$JobInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$JobInput<TRes>
    implements CopyWith$Input$JobInput<TRes> {
  _CopyWithImpl$Input$JobInput(this._instance, this._then);

  final Input$JobInput _instance;

  final TRes Function(Input$JobInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$JobInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$JobInput<TRes>
    implements CopyWith$Input$JobInput<TRes> {
  _CopyWithStubImpl$Input$JobInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$RelatedInput {
  factory Input$RelatedInput({String? id}) =>
      Input$RelatedInput._({if (id != null) r'id': id});

  Input$RelatedInput._(this._$data);

  factory Input$RelatedInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$RelatedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$RelatedInput<Input$RelatedInput> get copyWith =>
      CopyWith$Input$RelatedInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RelatedInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$RelatedInput<TRes> {
  factory CopyWith$Input$RelatedInput(
    Input$RelatedInput instance,
    TRes Function(Input$RelatedInput) then,
  ) = _CopyWithImpl$Input$RelatedInput;

  factory CopyWith$Input$RelatedInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RelatedInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$RelatedInput<TRes>
    implements CopyWith$Input$RelatedInput<TRes> {
  _CopyWithImpl$Input$RelatedInput(this._instance, this._then);

  final Input$RelatedInput _instance;

  final TRes Function(Input$RelatedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$RelatedInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$RelatedInput<TRes>
    implements CopyWith$Input$RelatedInput<TRes> {
  _CopyWithStubImpl$Input$RelatedInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
