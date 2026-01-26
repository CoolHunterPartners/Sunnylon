import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$RefreshToken {
  factory Variables$Query$RefreshToken({required String oldRefreshToken}) =>
      Variables$Query$RefreshToken._({r'oldRefreshToken': oldRefreshToken});

  Variables$Query$RefreshToken._(this._$data);

  factory Variables$Query$RefreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$oldRefreshToken = data['oldRefreshToken'];
    result$data['oldRefreshToken'] = (l$oldRefreshToken as String);
    return Variables$Query$RefreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get oldRefreshToken => (_$data['oldRefreshToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$oldRefreshToken = oldRefreshToken;
    result$data['oldRefreshToken'] = l$oldRefreshToken;
    return result$data;
  }

  CopyWith$Variables$Query$RefreshToken<Variables$Query$RefreshToken>
  get copyWith => CopyWith$Variables$Query$RefreshToken(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$RefreshToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oldRefreshToken = oldRefreshToken;
    final lOther$oldRefreshToken = other.oldRefreshToken;
    if (l$oldRefreshToken != lOther$oldRefreshToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$oldRefreshToken = oldRefreshToken;
    return Object.hashAll([l$oldRefreshToken]);
  }
}

abstract class CopyWith$Variables$Query$RefreshToken<TRes> {
  factory CopyWith$Variables$Query$RefreshToken(
    Variables$Query$RefreshToken instance,
    TRes Function(Variables$Query$RefreshToken) then,
  ) = _CopyWithImpl$Variables$Query$RefreshToken;

  factory CopyWith$Variables$Query$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$RefreshToken;

  TRes call({String? oldRefreshToken});
}

class _CopyWithImpl$Variables$Query$RefreshToken<TRes>
    implements CopyWith$Variables$Query$RefreshToken<TRes> {
  _CopyWithImpl$Variables$Query$RefreshToken(this._instance, this._then);

  final Variables$Query$RefreshToken _instance;

  final TRes Function(Variables$Query$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? oldRefreshToken = _undefined}) => _then(
    Variables$Query$RefreshToken._({
      ..._instance._$data,
      if (oldRefreshToken != _undefined && oldRefreshToken != null)
        'oldRefreshToken': (oldRefreshToken as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$RefreshToken<TRes>
    implements CopyWith$Variables$Query$RefreshToken<TRes> {
  _CopyWithStubImpl$Variables$Query$RefreshToken(this._res);

  TRes _res;

  call({String? oldRefreshToken}) => _res;
}

class Query$RefreshToken {
  Query$RefreshToken({this.refreshToken, this.$__typename = 'Query'});

  factory Query$RefreshToken.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Query$RefreshToken(
      refreshToken: l$refreshToken == null
          ? null
          : Query$RefreshToken$refreshToken.fromJson(
              (l$refreshToken as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RefreshToken$refreshToken? refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$refreshToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RefreshToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken on Query$RefreshToken {
  CopyWith$Query$RefreshToken<Query$RefreshToken> get copyWith =>
      CopyWith$Query$RefreshToken(this, (i) => i);
}

abstract class CopyWith$Query$RefreshToken<TRes> {
  factory CopyWith$Query$RefreshToken(
    Query$RefreshToken instance,
    TRes Function(Query$RefreshToken) then,
  ) = _CopyWithImpl$Query$RefreshToken;

  factory CopyWith$Query$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Query$RefreshToken;

  TRes call({
    Query$RefreshToken$refreshToken? refreshToken,
    String? $__typename,
  });
  CopyWith$Query$RefreshToken$refreshToken<TRes> get refreshToken;
}

class _CopyWithImpl$Query$RefreshToken<TRes>
    implements CopyWith$Query$RefreshToken<TRes> {
  _CopyWithImpl$Query$RefreshToken(this._instance, this._then);

  final Query$RefreshToken _instance;

  final TRes Function(Query$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$RefreshToken(
      refreshToken: refreshToken == _undefined
          ? _instance.refreshToken
          : (refreshToken as Query$RefreshToken$refreshToken?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$RefreshToken$refreshToken<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return local$refreshToken == null
        ? CopyWith$Query$RefreshToken$refreshToken.stub(_then(_instance))
        : CopyWith$Query$RefreshToken$refreshToken(
            local$refreshToken,
            (e) => call(refreshToken: e),
          );
  }
}

class _CopyWithStubImpl$Query$RefreshToken<TRes>
    implements CopyWith$Query$RefreshToken<TRes> {
  _CopyWithStubImpl$Query$RefreshToken(this._res);

  TRes _res;

  call({Query$RefreshToken$refreshToken? refreshToken, String? $__typename}) =>
      _res;

  CopyWith$Query$RefreshToken$refreshToken<TRes> get refreshToken =>
      CopyWith$Query$RefreshToken$refreshToken.stub(_res);
}

const documentNodeQueryRefreshToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'RefreshToken'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'oldRefreshToken')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'oldRefreshToken'),
                value: VariableNode(name: NameNode(value: 'oldRefreshToken')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'accessToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'refreshToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'expirationDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$RefreshToken _parserFn$Query$RefreshToken(Map<String, dynamic> data) =>
    Query$RefreshToken.fromJson(data);
typedef OnQueryComplete$Query$RefreshToken =
    FutureOr<void> Function(Map<String, dynamic>?, Query$RefreshToken?);

class Options$Query$RefreshToken
    extends graphql.QueryOptions<Query$RefreshToken> {
  Options$Query$RefreshToken({
    String? operationName,
    required Variables$Query$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RefreshToken? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RefreshToken? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$RefreshToken(data),
               ),
         onError: onError,
         document: documentNodeQueryRefreshToken,
         parserFn: _parserFn$Query$RefreshToken,
       );

  final OnQueryComplete$Query$RefreshToken? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$RefreshToken
    extends graphql.WatchQueryOptions<Query$RefreshToken> {
  WatchOptions$Query$RefreshToken({
    String? operationName,
    required Variables$Query$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryRefreshToken,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$RefreshToken,
       );
}

class FetchMoreOptions$Query$RefreshToken extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RefreshToken({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$RefreshToken variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryRefreshToken,
       );
}

extension ClientExtension$Query$RefreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RefreshToken>> query$RefreshToken(
    Options$Query$RefreshToken options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$RefreshToken> watchQuery$RefreshToken(
    WatchOptions$Query$RefreshToken options,
  ) => this.watchQuery(options);

  void writeQuery$RefreshToken({
    required Query$RefreshToken data,
    required Variables$Query$RefreshToken variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryRefreshToken),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$RefreshToken? readQuery$RefreshToken({
    required Variables$Query$RefreshToken variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryRefreshToken),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RefreshToken.fromJson(result);
  }
}

class Query$RefreshToken$refreshToken {
  Query$RefreshToken$refreshToken({
    this.accessToken,
    this.refreshToken,
    this.expirationDate,
    this.$__typename = 'LoginResponse',
  });

  factory Query$RefreshToken$refreshToken.fromJson(Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$expirationDate = json['expirationDate'];
    final l$$__typename = json['__typename'];
    return Query$RefreshToken$refreshToken(
      accessToken: (l$accessToken as String?),
      refreshToken: (l$refreshToken as String?),
      expirationDate: (l$expirationDate as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accessToken;

  final String? refreshToken;

  final String? expirationDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$expirationDate = expirationDate;
    _resultData['expirationDate'] = l$expirationDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$expirationDate = expirationDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$expirationDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RefreshToken$refreshToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$expirationDate = expirationDate;
    final lOther$expirationDate = other.expirationDate;
    if (l$expirationDate != lOther$expirationDate) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken$refreshToken
    on Query$RefreshToken$refreshToken {
  CopyWith$Query$RefreshToken$refreshToken<Query$RefreshToken$refreshToken>
  get copyWith => CopyWith$Query$RefreshToken$refreshToken(this, (i) => i);
}

abstract class CopyWith$Query$RefreshToken$refreshToken<TRes> {
  factory CopyWith$Query$RefreshToken$refreshToken(
    Query$RefreshToken$refreshToken instance,
    TRes Function(Query$RefreshToken$refreshToken) then,
  ) = _CopyWithImpl$Query$RefreshToken$refreshToken;

  factory CopyWith$Query$RefreshToken$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Query$RefreshToken$refreshToken;

  TRes call({
    String? accessToken,
    String? refreshToken,
    String? expirationDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RefreshToken$refreshToken<TRes>
    implements CopyWith$Query$RefreshToken$refreshToken<TRes> {
  _CopyWithImpl$Query$RefreshToken$refreshToken(this._instance, this._then);

  final Query$RefreshToken$refreshToken _instance;

  final TRes Function(Query$RefreshToken$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? expirationDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$RefreshToken$refreshToken(
      accessToken: accessToken == _undefined
          ? _instance.accessToken
          : (accessToken as String?),
      refreshToken: refreshToken == _undefined
          ? _instance.refreshToken
          : (refreshToken as String?),
      expirationDate: expirationDate == _undefined
          ? _instance.expirationDate
          : (expirationDate as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$RefreshToken$refreshToken<TRes>
    implements CopyWith$Query$RefreshToken$refreshToken<TRes> {
  _CopyWithStubImpl$Query$RefreshToken$refreshToken(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    String? expirationDate,
    String? $__typename,
  }) => _res;
}

class Query$Profile {
  Query$Profile({this.profile, this.$__typename = 'Query'});

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
      profile: l$profile == null
          ? null
          : Query$Profile$profile.fromJson((l$profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Profile$profile? profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Profile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith =>
      CopyWith$Query$Profile(this, (i) => i);
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
    Query$Profile instance,
    TRes Function(Query$Profile) then,
  ) = _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({Query$Profile$profile? profile, String? $__typename});
  CopyWith$Query$Profile$profile<TRes> get profile;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(this._instance, this._then);

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? profile = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$Profile(
          profile: profile == _undefined
              ? _instance.profile
              : (profile as Query$Profile$profile?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$Profile$profile<TRes> get profile {
    final local$profile = _instance.profile;
    return local$profile == null
        ? CopyWith$Query$Profile$profile.stub(_then(_instance))
        : CopyWith$Query$Profile$profile(
            local$profile,
            (e) => call(profile: e),
          );
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({Query$Profile$profile? profile, String? $__typename}) => _res;

  CopyWith$Query$Profile$profile<TRes> get profile =>
      CopyWith$Query$Profile$profile.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Profile'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'profile'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'userId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'firstName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'lastName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'phone'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$Profile _parserFn$Query$Profile(Map<String, dynamic> data) =>
    Query$Profile.fromJson(data);
typedef OnQueryComplete$Query$Profile =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Profile?);

class Options$Query$Profile extends graphql.QueryOptions<Query$Profile> {
  Options$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Profile? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$Profile(data),
               ),
         onError: onError,
         document: documentNodeQueryProfile,
         parserFn: _parserFn$Query$Profile,
       );

  final OnQueryComplete$Query$Profile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Profile
    extends graphql.WatchQueryOptions<Query$Profile> {
  WatchOptions$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryProfile,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Profile,
       );
}

class FetchMoreOptions$Query$Profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Profile({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeQueryProfile);
}

extension ClientExtension$Query$Profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Profile>> query$Profile([
    Options$Query$Profile? options,
  ]) async => await this.query(options ?? Options$Query$Profile());

  graphql.ObservableQuery<Query$Profile> watchQuery$Profile([
    WatchOptions$Query$Profile? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$Profile());

  void writeQuery$Profile({
    required Query$Profile data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryProfile),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$Profile? readQuery$Profile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryProfile),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Profile.fromJson(result);
  }
}

class Query$Profile$profile {
  Query$Profile$profile({
    this.userId,
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.userName,
    this.$__typename = 'Profile',
  });

  factory Query$Profile$profile.fromJson(Map<String, dynamic> json) {
    final l$userId = json['userId'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile(
      userId: (l$userId as String?),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      phone: (l$phone as String?),
      userName: (l$userName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userId;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? phone;

  final String? userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phone = phone;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userId,
      l$email,
      l$firstName,
      l$lastName,
      l$phone,
      l$userName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Profile$profile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile on Query$Profile$profile {
  CopyWith$Query$Profile$profile<Query$Profile$profile> get copyWith =>
      CopyWith$Query$Profile$profile(this, (i) => i);
}

abstract class CopyWith$Query$Profile$profile<TRes> {
  factory CopyWith$Query$Profile$profile(
    Query$Profile$profile instance,
    TRes Function(Query$Profile$profile) then,
  ) = _CopyWithImpl$Query$Profile$profile;

  factory CopyWith$Query$Profile$profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$profile;

  TRes call({
    String? userId,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$profile<TRes>
    implements CopyWith$Query$Profile$profile<TRes> {
  _CopyWithImpl$Query$Profile$profile(this._instance, this._then);

  final Query$Profile$profile _instance;

  final TRes Function(Query$Profile$profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Profile$profile(
      userId: userId == _undefined ? _instance.userId : (userId as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      firstName: firstName == _undefined
          ? _instance.firstName
          : (firstName as String?),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      userName: userName == _undefined
          ? _instance.userName
          : (userName as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Profile$profile<TRes>
    implements CopyWith$Query$Profile$profile<TRes> {
  _CopyWithStubImpl$Query$Profile$profile(this._res);

  TRes _res;

  call({
    String? userId,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? $__typename,
  }) => _res;
}
