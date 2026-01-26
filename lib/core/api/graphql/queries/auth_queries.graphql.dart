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
