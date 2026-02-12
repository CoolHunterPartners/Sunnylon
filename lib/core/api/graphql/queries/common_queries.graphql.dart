import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Common {
  Query$Common({
    this.genders,
    this.currencies,
    this.provinces,
    this.identificationTypes,
    this.relatedType,
    this.relationShiptType,
    this.$__typename = 'Query',
  });

  factory Query$Common.fromJson(Map<String, dynamic> json) {
    final l$genders = json['genders'];
    final l$currencies = json['currencies'];
    final l$provinces = json['provinces'];
    final l$identificationTypes = json['identificationTypes'];
    final l$relatedType = json['relatedType'];
    final l$relationShiptType = json['relationShiptType'];
    final l$$__typename = json['__typename'];
    return Query$Common(
      genders: (l$genders as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$genders.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      currencies: (l$currencies as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$currencies.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      provinces: (l$provinces as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$provinces.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      identificationTypes: (l$identificationTypes as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$identificationTypes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      relatedType: (l$relatedType as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$relatedType.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      relationShiptType: (l$relationShiptType as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$Common$relationShiptType.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Common$genders?>? genders;

  final List<Query$Common$currencies?>? currencies;

  final List<Query$Common$provinces?>? provinces;

  final List<Query$Common$identificationTypes?>? identificationTypes;

  final List<Query$Common$relatedType?>? relatedType;

  final List<Query$Common$relationShiptType?>? relationShiptType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$genders = genders;
    _resultData['genders'] = l$genders?.map((e) => e?.toJson()).toList();
    final l$currencies = currencies;
    _resultData['currencies'] = l$currencies?.map((e) => e?.toJson()).toList();
    final l$provinces = provinces;
    _resultData['provinces'] = l$provinces?.map((e) => e?.toJson()).toList();
    final l$identificationTypes = identificationTypes;
    _resultData['identificationTypes'] = l$identificationTypes
        ?.map((e) => e?.toJson())
        .toList();
    final l$relatedType = relatedType;
    _resultData['relatedType'] = l$relatedType
        ?.map((e) => e?.toJson())
        .toList();
    final l$relationShiptType = relationShiptType;
    _resultData['relationShiptType'] = l$relationShiptType
        ?.map((e) => e?.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$genders = genders;
    final l$currencies = currencies;
    final l$provinces = provinces;
    final l$identificationTypes = identificationTypes;
    final l$relatedType = relatedType;
    final l$relationShiptType = relationShiptType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$genders == null ? null : Object.hashAll(l$genders.map((v) => v)),
      l$currencies == null ? null : Object.hashAll(l$currencies.map((v) => v)),
      l$provinces == null ? null : Object.hashAll(l$provinces.map((v) => v)),
      l$identificationTypes == null
          ? null
          : Object.hashAll(l$identificationTypes.map((v) => v)),
      l$relatedType == null
          ? null
          : Object.hashAll(l$relatedType.map((v) => v)),
      l$relationShiptType == null
          ? null
          : Object.hashAll(l$relationShiptType.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common || runtimeType != other.runtimeType) {
      return false;
    }
    final l$genders = genders;
    final lOther$genders = other.genders;
    if (l$genders != null && lOther$genders != null) {
      if (l$genders.length != lOther$genders.length) {
        return false;
      }
      for (int i = 0; i < l$genders.length; i++) {
        final l$genders$entry = l$genders[i];
        final lOther$genders$entry = lOther$genders[i];
        if (l$genders$entry != lOther$genders$entry) {
          return false;
        }
      }
    } else if (l$genders != lOther$genders) {
      return false;
    }
    final l$currencies = currencies;
    final lOther$currencies = other.currencies;
    if (l$currencies != null && lOther$currencies != null) {
      if (l$currencies.length != lOther$currencies.length) {
        return false;
      }
      for (int i = 0; i < l$currencies.length; i++) {
        final l$currencies$entry = l$currencies[i];
        final lOther$currencies$entry = lOther$currencies[i];
        if (l$currencies$entry != lOther$currencies$entry) {
          return false;
        }
      }
    } else if (l$currencies != lOther$currencies) {
      return false;
    }
    final l$provinces = provinces;
    final lOther$provinces = other.provinces;
    if (l$provinces != null && lOther$provinces != null) {
      if (l$provinces.length != lOther$provinces.length) {
        return false;
      }
      for (int i = 0; i < l$provinces.length; i++) {
        final l$provinces$entry = l$provinces[i];
        final lOther$provinces$entry = lOther$provinces[i];
        if (l$provinces$entry != lOther$provinces$entry) {
          return false;
        }
      }
    } else if (l$provinces != lOther$provinces) {
      return false;
    }
    final l$identificationTypes = identificationTypes;
    final lOther$identificationTypes = other.identificationTypes;
    if (l$identificationTypes != null && lOther$identificationTypes != null) {
      if (l$identificationTypes.length != lOther$identificationTypes.length) {
        return false;
      }
      for (int i = 0; i < l$identificationTypes.length; i++) {
        final l$identificationTypes$entry = l$identificationTypes[i];
        final lOther$identificationTypes$entry = lOther$identificationTypes[i];
        if (l$identificationTypes$entry != lOther$identificationTypes$entry) {
          return false;
        }
      }
    } else if (l$identificationTypes != lOther$identificationTypes) {
      return false;
    }
    final l$relatedType = relatedType;
    final lOther$relatedType = other.relatedType;
    if (l$relatedType != null && lOther$relatedType != null) {
      if (l$relatedType.length != lOther$relatedType.length) {
        return false;
      }
      for (int i = 0; i < l$relatedType.length; i++) {
        final l$relatedType$entry = l$relatedType[i];
        final lOther$relatedType$entry = lOther$relatedType[i];
        if (l$relatedType$entry != lOther$relatedType$entry) {
          return false;
        }
      }
    } else if (l$relatedType != lOther$relatedType) {
      return false;
    }
    final l$relationShiptType = relationShiptType;
    final lOther$relationShiptType = other.relationShiptType;
    if (l$relationShiptType != null && lOther$relationShiptType != null) {
      if (l$relationShiptType.length != lOther$relationShiptType.length) {
        return false;
      }
      for (int i = 0; i < l$relationShiptType.length; i++) {
        final l$relationShiptType$entry = l$relationShiptType[i];
        final lOther$relationShiptType$entry = lOther$relationShiptType[i];
        if (l$relationShiptType$entry != lOther$relationShiptType$entry) {
          return false;
        }
      }
    } else if (l$relationShiptType != lOther$relationShiptType) {
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

extension UtilityExtension$Query$Common on Query$Common {
  CopyWith$Query$Common<Query$Common> get copyWith =>
      CopyWith$Query$Common(this, (i) => i);
}

abstract class CopyWith$Query$Common<TRes> {
  factory CopyWith$Query$Common(
    Query$Common instance,
    TRes Function(Query$Common) then,
  ) = _CopyWithImpl$Query$Common;

  factory CopyWith$Query$Common.stub(TRes res) = _CopyWithStubImpl$Query$Common;

  TRes call({
    List<Query$Common$genders?>? genders,
    List<Query$Common$currencies?>? currencies,
    List<Query$Common$provinces?>? provinces,
    List<Query$Common$identificationTypes?>? identificationTypes,
    List<Query$Common$relatedType?>? relatedType,
    List<Query$Common$relationShiptType?>? relationShiptType,
    String? $__typename,
  });
  TRes genders(
    Iterable<Query$Common$genders?>? Function(
      Iterable<CopyWith$Query$Common$genders<Query$Common$genders>?>?,
    )
    _fn,
  );
  TRes currencies(
    Iterable<Query$Common$currencies?>? Function(
      Iterable<CopyWith$Query$Common$currencies<Query$Common$currencies>?>?,
    )
    _fn,
  );
  TRes provinces(
    Iterable<Query$Common$provinces?>? Function(
      Iterable<CopyWith$Query$Common$provinces<Query$Common$provinces>?>?,
    )
    _fn,
  );
  TRes identificationTypes(
    Iterable<Query$Common$identificationTypes?>? Function(
      Iterable<
        CopyWith$Query$Common$identificationTypes<
          Query$Common$identificationTypes
        >?
      >?,
    )
    _fn,
  );
  TRes relatedType(
    Iterable<Query$Common$relatedType?>? Function(
      Iterable<CopyWith$Query$Common$relatedType<Query$Common$relatedType>?>?,
    )
    _fn,
  );
  TRes relationShiptType(
    Iterable<Query$Common$relationShiptType?>? Function(
      Iterable<
        CopyWith$Query$Common$relationShiptType<Query$Common$relationShiptType>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Common<TRes> implements CopyWith$Query$Common<TRes> {
  _CopyWithImpl$Query$Common(this._instance, this._then);

  final Query$Common _instance;

  final TRes Function(Query$Common) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? genders = _undefined,
    Object? currencies = _undefined,
    Object? provinces = _undefined,
    Object? identificationTypes = _undefined,
    Object? relatedType = _undefined,
    Object? relationShiptType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common(
      genders: genders == _undefined
          ? _instance.genders
          : (genders as List<Query$Common$genders?>?),
      currencies: currencies == _undefined
          ? _instance.currencies
          : (currencies as List<Query$Common$currencies?>?),
      provinces: provinces == _undefined
          ? _instance.provinces
          : (provinces as List<Query$Common$provinces?>?),
      identificationTypes: identificationTypes == _undefined
          ? _instance.identificationTypes
          : (identificationTypes as List<Query$Common$identificationTypes?>?),
      relatedType: relatedType == _undefined
          ? _instance.relatedType
          : (relatedType as List<Query$Common$relatedType?>?),
      relationShiptType: relationShiptType == _undefined
          ? _instance.relationShiptType
          : (relationShiptType as List<Query$Common$relationShiptType?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes genders(
    Iterable<Query$Common$genders?>? Function(
      Iterable<CopyWith$Query$Common$genders<Query$Common$genders>?>?,
    )
    _fn,
  ) => call(
    genders: _fn(
      _instance.genders?.map(
        (e) => e == null ? null : CopyWith$Query$Common$genders(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes currencies(
    Iterable<Query$Common$currencies?>? Function(
      Iterable<CopyWith$Query$Common$currencies<Query$Common$currencies>?>?,
    )
    _fn,
  ) => call(
    currencies: _fn(
      _instance.currencies?.map(
        (e) => e == null ? null : CopyWith$Query$Common$currencies(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes provinces(
    Iterable<Query$Common$provinces?>? Function(
      Iterable<CopyWith$Query$Common$provinces<Query$Common$provinces>?>?,
    )
    _fn,
  ) => call(
    provinces: _fn(
      _instance.provinces?.map(
        (e) => e == null ? null : CopyWith$Query$Common$provinces(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes identificationTypes(
    Iterable<Query$Common$identificationTypes?>? Function(
      Iterable<
        CopyWith$Query$Common$identificationTypes<
          Query$Common$identificationTypes
        >?
      >?,
    )
    _fn,
  ) => call(
    identificationTypes: _fn(
      _instance.identificationTypes?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$Common$identificationTypes(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes relatedType(
    Iterable<Query$Common$relatedType?>? Function(
      Iterable<CopyWith$Query$Common$relatedType<Query$Common$relatedType>?>?,
    )
    _fn,
  ) => call(
    relatedType: _fn(
      _instance.relatedType?.map(
        (e) =>
            e == null ? null : CopyWith$Query$Common$relatedType(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes relationShiptType(
    Iterable<Query$Common$relationShiptType?>? Function(
      Iterable<
        CopyWith$Query$Common$relationShiptType<Query$Common$relationShiptType>?
      >?,
    )
    _fn,
  ) => call(
    relationShiptType: _fn(
      _instance.relationShiptType?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$Common$relationShiptType(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$Common<TRes>
    implements CopyWith$Query$Common<TRes> {
  _CopyWithStubImpl$Query$Common(this._res);

  TRes _res;

  call({
    List<Query$Common$genders?>? genders,
    List<Query$Common$currencies?>? currencies,
    List<Query$Common$provinces?>? provinces,
    List<Query$Common$identificationTypes?>? identificationTypes,
    List<Query$Common$relatedType?>? relatedType,
    List<Query$Common$relationShiptType?>? relationShiptType,
    String? $__typename,
  }) => _res;

  genders(_fn) => _res;

  currencies(_fn) => _res;

  provinces(_fn) => _res;

  identificationTypes(_fn) => _res;

  relatedType(_fn) => _res;

  relationShiptType(_fn) => _res;
}

const documentNodeQueryCommon = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Common'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'genders'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
            name: NameNode(value: 'currencies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
            name: NameNode(value: 'provinces'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
            name: NameNode(value: 'identificationTypes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
            name: NameNode(value: 'relatedType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
            name: NameNode(value: 'relationShiptType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
Query$Common _parserFn$Query$Common(Map<String, dynamic> data) =>
    Query$Common.fromJson(data);
typedef OnQueryComplete$Query$Common =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Common?);

class Options$Query$Common extends graphql.QueryOptions<Query$Common> {
  Options$Query$Common({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Common? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Common? onComplete,
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
                 data == null ? null : _parserFn$Query$Common(data),
               ),
         onError: onError,
         document: documentNodeQueryCommon,
         parserFn: _parserFn$Query$Common,
       );

  final OnQueryComplete$Query$Common? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Common
    extends graphql.WatchQueryOptions<Query$Common> {
  WatchOptions$Query$Common({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Common? typedOptimisticResult,
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
         document: documentNodeQueryCommon,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Common,
       );
}

class FetchMoreOptions$Query$Common extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Common({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeQueryCommon);
}

extension ClientExtension$Query$Common on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Common>> query$Common([
    Options$Query$Common? options,
  ]) async => await this.query(options ?? Options$Query$Common());

  graphql.ObservableQuery<Query$Common> watchQuery$Common([
    WatchOptions$Query$Common? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$Common());

  void writeQuery$Common({required Query$Common data, bool broadcast = true}) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCommon),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$Common? readQuery$Common({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCommon),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Common.fromJson(result);
  }
}

class Query$Common$genders {
  Query$Common$genders({this.key, this.value, this.$__typename = 'KeyValue'});

  factory Query$Common$genders.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$genders(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$genders || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$genders on Query$Common$genders {
  CopyWith$Query$Common$genders<Query$Common$genders> get copyWith =>
      CopyWith$Query$Common$genders(this, (i) => i);
}

abstract class CopyWith$Query$Common$genders<TRes> {
  factory CopyWith$Query$Common$genders(
    Query$Common$genders instance,
    TRes Function(Query$Common$genders) then,
  ) = _CopyWithImpl$Query$Common$genders;

  factory CopyWith$Query$Common$genders.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$genders;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$genders<TRes>
    implements CopyWith$Query$Common$genders<TRes> {
  _CopyWithImpl$Query$Common$genders(this._instance, this._then);

  final Query$Common$genders _instance;

  final TRes Function(Query$Common$genders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$genders(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$genders<TRes>
    implements CopyWith$Query$Common$genders<TRes> {
  _CopyWithStubImpl$Query$Common$genders(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Query$Common$currencies {
  Query$Common$currencies({
    this.key,
    this.value,
    this.$__typename = 'KeyValue',
  });

  factory Query$Common$currencies.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$currencies(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$currencies || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$currencies on Query$Common$currencies {
  CopyWith$Query$Common$currencies<Query$Common$currencies> get copyWith =>
      CopyWith$Query$Common$currencies(this, (i) => i);
}

abstract class CopyWith$Query$Common$currencies<TRes> {
  factory CopyWith$Query$Common$currencies(
    Query$Common$currencies instance,
    TRes Function(Query$Common$currencies) then,
  ) = _CopyWithImpl$Query$Common$currencies;

  factory CopyWith$Query$Common$currencies.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$currencies;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$currencies<TRes>
    implements CopyWith$Query$Common$currencies<TRes> {
  _CopyWithImpl$Query$Common$currencies(this._instance, this._then);

  final Query$Common$currencies _instance;

  final TRes Function(Query$Common$currencies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$currencies(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$currencies<TRes>
    implements CopyWith$Query$Common$currencies<TRes> {
  _CopyWithStubImpl$Query$Common$currencies(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Query$Common$provinces {
  Query$Common$provinces({this.key, this.value, this.$__typename = 'KeyValue'});

  factory Query$Common$provinces.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$provinces(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$provinces || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$provinces on Query$Common$provinces {
  CopyWith$Query$Common$provinces<Query$Common$provinces> get copyWith =>
      CopyWith$Query$Common$provinces(this, (i) => i);
}

abstract class CopyWith$Query$Common$provinces<TRes> {
  factory CopyWith$Query$Common$provinces(
    Query$Common$provinces instance,
    TRes Function(Query$Common$provinces) then,
  ) = _CopyWithImpl$Query$Common$provinces;

  factory CopyWith$Query$Common$provinces.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$provinces;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$provinces<TRes>
    implements CopyWith$Query$Common$provinces<TRes> {
  _CopyWithImpl$Query$Common$provinces(this._instance, this._then);

  final Query$Common$provinces _instance;

  final TRes Function(Query$Common$provinces) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$provinces(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$provinces<TRes>
    implements CopyWith$Query$Common$provinces<TRes> {
  _CopyWithStubImpl$Query$Common$provinces(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Query$Common$identificationTypes {
  Query$Common$identificationTypes({
    this.key,
    this.value,
    this.$__typename = 'KeyValue',
  });

  factory Query$Common$identificationTypes.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$identificationTypes(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$identificationTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$identificationTypes
    on Query$Common$identificationTypes {
  CopyWith$Query$Common$identificationTypes<Query$Common$identificationTypes>
  get copyWith => CopyWith$Query$Common$identificationTypes(this, (i) => i);
}

abstract class CopyWith$Query$Common$identificationTypes<TRes> {
  factory CopyWith$Query$Common$identificationTypes(
    Query$Common$identificationTypes instance,
    TRes Function(Query$Common$identificationTypes) then,
  ) = _CopyWithImpl$Query$Common$identificationTypes;

  factory CopyWith$Query$Common$identificationTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$identificationTypes;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$identificationTypes<TRes>
    implements CopyWith$Query$Common$identificationTypes<TRes> {
  _CopyWithImpl$Query$Common$identificationTypes(this._instance, this._then);

  final Query$Common$identificationTypes _instance;

  final TRes Function(Query$Common$identificationTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$identificationTypes(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$identificationTypes<TRes>
    implements CopyWith$Query$Common$identificationTypes<TRes> {
  _CopyWithStubImpl$Query$Common$identificationTypes(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Query$Common$relatedType {
  Query$Common$relatedType({
    this.key,
    this.value,
    this.$__typename = 'KeyValue',
  });

  factory Query$Common$relatedType.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$relatedType(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$relatedType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$relatedType
    on Query$Common$relatedType {
  CopyWith$Query$Common$relatedType<Query$Common$relatedType> get copyWith =>
      CopyWith$Query$Common$relatedType(this, (i) => i);
}

abstract class CopyWith$Query$Common$relatedType<TRes> {
  factory CopyWith$Query$Common$relatedType(
    Query$Common$relatedType instance,
    TRes Function(Query$Common$relatedType) then,
  ) = _CopyWithImpl$Query$Common$relatedType;

  factory CopyWith$Query$Common$relatedType.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$relatedType;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$relatedType<TRes>
    implements CopyWith$Query$Common$relatedType<TRes> {
  _CopyWithImpl$Query$Common$relatedType(this._instance, this._then);

  final Query$Common$relatedType _instance;

  final TRes Function(Query$Common$relatedType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$relatedType(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$relatedType<TRes>
    implements CopyWith$Query$Common$relatedType<TRes> {
  _CopyWithStubImpl$Query$Common$relatedType(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Query$Common$relationShiptType {
  Query$Common$relationShiptType({
    this.key,
    this.value,
    this.$__typename = 'KeyValue',
  });

  factory Query$Common$relationShiptType.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$Common$relationShiptType(
      key: (l$key as String?),
      value: (l$value as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Common$relationShiptType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$Common$relationShiptType
    on Query$Common$relationShiptType {
  CopyWith$Query$Common$relationShiptType<Query$Common$relationShiptType>
  get copyWith => CopyWith$Query$Common$relationShiptType(this, (i) => i);
}

abstract class CopyWith$Query$Common$relationShiptType<TRes> {
  factory CopyWith$Query$Common$relationShiptType(
    Query$Common$relationShiptType instance,
    TRes Function(Query$Common$relationShiptType) then,
  ) = _CopyWithImpl$Query$Common$relationShiptType;

  factory CopyWith$Query$Common$relationShiptType.stub(TRes res) =
      _CopyWithStubImpl$Query$Common$relationShiptType;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$Common$relationShiptType<TRes>
    implements CopyWith$Query$Common$relationShiptType<TRes> {
  _CopyWithImpl$Query$Common$relationShiptType(this._instance, this._then);

  final Query$Common$relationShiptType _instance;

  final TRes Function(Query$Common$relationShiptType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Common$relationShiptType(
      key: key == _undefined ? _instance.key : (key as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Common$relationShiptType<TRes>
    implements CopyWith$Query$Common$relationShiptType<TRes> {
  _CopyWithStubImpl$Query$Common$relationShiptType(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
