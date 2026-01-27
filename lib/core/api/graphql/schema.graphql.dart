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
