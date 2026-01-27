import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetClient {
  factory Variables$Query$GetClient({
    int? page,
    int? pageSize,
    List<Input$GetClientDtoSortInput>? sort,
    Input$GetClientDtoFilterInput? filter,
  }) => Variables$Query$GetClient._({
    if (page != null) r'page': page,
    if (pageSize != null) r'pageSize': pageSize,
    if (sort != null) r'sort': sort,
    if (filter != null) r'filter': filter,
  });

  Variables$Query$GetClient._(this._$data);

  factory Variables$Query$GetClient.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('pageSize')) {
      final l$pageSize = data['pageSize'];
      result$data['pageSize'] = (l$pageSize as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
            (e) => Input$GetClientDtoSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$GetClientDtoFilterInput.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    return Variables$Query$GetClient._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get pageSize => (_$data['pageSize'] as int?);

  List<Input$GetClientDtoSortInput>? get sort =>
      (_$data['sort'] as List<Input$GetClientDtoSortInput>?);

  Input$GetClientDtoFilterInput? get filter =>
      (_$data['filter'] as Input$GetClientDtoFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('pageSize')) {
      final l$pageSize = pageSize;
      result$data['pageSize'] = l$pageSize;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetClient<Variables$Query$GetClient> get copyWith =>
      CopyWith$Variables$Query$GetClient(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetClient ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (_$data.containsKey('pageSize') !=
        other._$data.containsKey('pageSize')) {
      return false;
    }
    if (l$pageSize != lOther$pageSize) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$pageSize = pageSize;
    final l$sort = sort;
    final l$filter = filter;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('pageSize') ? l$pageSize : const {},
      _$data.containsKey('sort')
          ? l$sort == null
                ? null
                : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('filter') ? l$filter : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetClient<TRes> {
  factory CopyWith$Variables$Query$GetClient(
    Variables$Query$GetClient instance,
    TRes Function(Variables$Query$GetClient) then,
  ) = _CopyWithImpl$Variables$Query$GetClient;

  factory CopyWith$Variables$Query$GetClient.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClient;

  TRes call({
    int? page,
    int? pageSize,
    List<Input$GetClientDtoSortInput>? sort,
    Input$GetClientDtoFilterInput? filter,
  });
}

class _CopyWithImpl$Variables$Query$GetClient<TRes>
    implements CopyWith$Variables$Query$GetClient<TRes> {
  _CopyWithImpl$Variables$Query$GetClient(this._instance, this._then);

  final Variables$Query$GetClient _instance;

  final TRes Function(Variables$Query$GetClient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? pageSize = _undefined,
    Object? sort = _undefined,
    Object? filter = _undefined,
  }) => _then(
    Variables$Query$GetClient._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
      if (pageSize != _undefined) 'pageSize': (pageSize as int?),
      if (sort != _undefined)
        'sort': (sort as List<Input$GetClientDtoSortInput>?),
      if (filter != _undefined)
        'filter': (filter as Input$GetClientDtoFilterInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetClient<TRes>
    implements CopyWith$Variables$Query$GetClient<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClient(this._res);

  TRes _res;

  call({
    int? page,
    int? pageSize,
    List<Input$GetClientDtoSortInput>? sort,
    Input$GetClientDtoFilterInput? filter,
  }) => _res;
}

class Query$GetClient {
  Query$GetClient({this.clients, this.$__typename = 'Query'});

  factory Query$GetClient.fromJson(Map<String, dynamic> json) {
    final l$clients = json['clients'];
    final l$$__typename = json['__typename'];
    return Query$GetClient(
      clients: l$clients == null
          ? null
          : Query$GetClient$clients.fromJson(
              (l$clients as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClient$clients? clients;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clients = clients;
    _resultData['clients'] = l$clients?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clients = clients;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clients, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetClient || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clients = clients;
    final lOther$clients = other.clients;
    if (l$clients != lOther$clients) {
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

extension UtilityExtension$Query$GetClient on Query$GetClient {
  CopyWith$Query$GetClient<Query$GetClient> get copyWith =>
      CopyWith$Query$GetClient(this, (i) => i);
}

abstract class CopyWith$Query$GetClient<TRes> {
  factory CopyWith$Query$GetClient(
    Query$GetClient instance,
    TRes Function(Query$GetClient) then,
  ) = _CopyWithImpl$Query$GetClient;

  factory CopyWith$Query$GetClient.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClient;

  TRes call({Query$GetClient$clients? clients, String? $__typename});
  CopyWith$Query$GetClient$clients<TRes> get clients;
}

class _CopyWithImpl$Query$GetClient<TRes>
    implements CopyWith$Query$GetClient<TRes> {
  _CopyWithImpl$Query$GetClient(this._instance, this._then);

  final Query$GetClient _instance;

  final TRes Function(Query$GetClient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clients = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetClient(
          clients: clients == _undefined
              ? _instance.clients
              : (clients as Query$GetClient$clients?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetClient$clients<TRes> get clients {
    final local$clients = _instance.clients;
    return local$clients == null
        ? CopyWith$Query$GetClient$clients.stub(_then(_instance))
        : CopyWith$Query$GetClient$clients(
            local$clients,
            (e) => call(clients: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetClient<TRes>
    implements CopyWith$Query$GetClient<TRes> {
  _CopyWithStubImpl$Query$GetClient(this._res);

  TRes _res;

  call({Query$GetClient$clients? clients, String? $__typename}) => _res;

  CopyWith$Query$GetClient$clients<TRes> get clients =>
      CopyWith$Query$GetClient$clients.stub(_res);
}

const documentNodeQueryGetClient = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetClient'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pageSize')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sort')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'GetClientDtoSortInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetClientDtoFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'clients'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'pageSize')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'idClient'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'fullName'),
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
                        name: NameNode(value: 'identification'),
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
                        name: NameNode(value: 'birthDay'),
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
                  name: NameNode(value: 'totalCount'),
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
Query$GetClient _parserFn$Query$GetClient(Map<String, dynamic> data) =>
    Query$GetClient.fromJson(data);
typedef OnQueryComplete$Query$GetClient =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetClient?);

class Options$Query$GetClient extends graphql.QueryOptions<Query$GetClient> {
  Options$Query$GetClient({
    String? operationName,
    Variables$Query$GetClient? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetClient? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetClient? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
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
                 data == null ? null : _parserFn$Query$GetClient(data),
               ),
         onError: onError,
         document: documentNodeQueryGetClient,
         parserFn: _parserFn$Query$GetClient,
       );

  final OnQueryComplete$Query$GetClient? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetClient
    extends graphql.WatchQueryOptions<Query$GetClient> {
  WatchOptions$Query$GetClient({
    String? operationName,
    Variables$Query$GetClient? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetClient? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryGetClient,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetClient,
       );
}

class FetchMoreOptions$Query$GetClient extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetClient({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetClient? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryGetClient,
       );
}

extension ClientExtension$Query$GetClient on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetClient>> query$GetClient([
    Options$Query$GetClient? options,
  ]) async => await this.query(options ?? Options$Query$GetClient());

  graphql.ObservableQuery<Query$GetClient> watchQuery$GetClient([
    WatchOptions$Query$GetClient? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$GetClient());

  void writeQuery$GetClient({
    required Query$GetClient data,
    Variables$Query$GetClient? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetClient),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$GetClient? readQuery$GetClient({
    Variables$Query$GetClient? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetClient),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetClient.fromJson(result);
  }
}

class Query$GetClient$clients {
  Query$GetClient$clients({
    this.items,
    this.totalCount,
    this.$__typename = 'ClientListResponse',
  });

  factory Query$GetClient$clients.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$GetClient$clients(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetClient$clients$items.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      totalCount: (l$totalCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetClient$clients$items?>? items;

  final int? totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e?.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetClient$clients || runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$GetClient$clients on Query$GetClient$clients {
  CopyWith$Query$GetClient$clients<Query$GetClient$clients> get copyWith =>
      CopyWith$Query$GetClient$clients(this, (i) => i);
}

abstract class CopyWith$Query$GetClient$clients<TRes> {
  factory CopyWith$Query$GetClient$clients(
    Query$GetClient$clients instance,
    TRes Function(Query$GetClient$clients) then,
  ) = _CopyWithImpl$Query$GetClient$clients;

  factory CopyWith$Query$GetClient$clients.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClient$clients;

  TRes call({
    List<Query$GetClient$clients$items?>? items,
    int? totalCount,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$GetClient$clients$items?>? Function(
      Iterable<
        CopyWith$Query$GetClient$clients$items<Query$GetClient$clients$items>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetClient$clients<TRes>
    implements CopyWith$Query$GetClient$clients<TRes> {
  _CopyWithImpl$Query$GetClient$clients(this._instance, this._then);

  final Query$GetClient$clients _instance;

  final TRes Function(Query$GetClient$clients) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetClient$clients(
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$GetClient$clients$items?>?),
      totalCount: totalCount == _undefined
          ? _instance.totalCount
          : (totalCount as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$GetClient$clients$items?>? Function(
      Iterable<
        CopyWith$Query$GetClient$clients$items<Query$GetClient$clients$items>?
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetClient$clients$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetClient$clients<TRes>
    implements CopyWith$Query$GetClient$clients<TRes> {
  _CopyWithStubImpl$Query$GetClient$clients(this._res);

  TRes _res;

  call({
    List<Query$GetClient$clients$items?>? items,
    int? totalCount,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$GetClient$clients$items {
  Query$GetClient$clients$items({
    this.idClient,
    this.name,
    this.lastName,
    this.fullName,
    this.email,
    this.identification,
    this.phone,
    this.birthDay,
    this.$__typename = 'ClientDto',
  });

  factory Query$GetClient$clients$items.fromJson(Map<String, dynamic> json) {
    final l$idClient = json['idClient'];
    final l$name = json['name'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$email = json['email'];
    final l$identification = json['identification'];
    final l$phone = json['phone'];
    final l$birthDay = json['birthDay'];
    final l$$__typename = json['__typename'];
    return Query$GetClient$clients$items(
      idClient: (l$idClient as String?),
      name: (l$name as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      email: (l$email as String?),
      identification: (l$identification as String?),
      phone: (l$phone as String?),
      birthDay: (l$birthDay as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? idClient;

  final String? name;

  final String? lastName;

  final String? fullName;

  final String? email;

  final String? identification;

  final String? phone;

  final String? birthDay;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$idClient = idClient;
    _resultData['idClient'] = l$idClient;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$birthDay = birthDay;
    _resultData['birthDay'] = l$birthDay;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$idClient = idClient;
    final l$name = name;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$email = email;
    final l$identification = identification;
    final l$phone = phone;
    final l$birthDay = birthDay;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$idClient,
      l$name,
      l$lastName,
      l$fullName,
      l$email,
      l$identification,
      l$phone,
      l$birthDay,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetClient$clients$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$idClient = idClient;
    final lOther$idClient = other.idClient;
    if (l$idClient != lOther$idClient) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (l$identification != lOther$identification) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$birthDay = birthDay;
    final lOther$birthDay = other.birthDay;
    if (l$birthDay != lOther$birthDay) {
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

extension UtilityExtension$Query$GetClient$clients$items
    on Query$GetClient$clients$items {
  CopyWith$Query$GetClient$clients$items<Query$GetClient$clients$items>
  get copyWith => CopyWith$Query$GetClient$clients$items(this, (i) => i);
}

abstract class CopyWith$Query$GetClient$clients$items<TRes> {
  factory CopyWith$Query$GetClient$clients$items(
    Query$GetClient$clients$items instance,
    TRes Function(Query$GetClient$clients$items) then,
  ) = _CopyWithImpl$Query$GetClient$clients$items;

  factory CopyWith$Query$GetClient$clients$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClient$clients$items;

  TRes call({
    String? idClient,
    String? name,
    String? lastName,
    String? fullName,
    String? email,
    String? identification,
    String? phone,
    String? birthDay,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClient$clients$items<TRes>
    implements CopyWith$Query$GetClient$clients$items<TRes> {
  _CopyWithImpl$Query$GetClient$clients$items(this._instance, this._then);

  final Query$GetClient$clients$items _instance;

  final TRes Function(Query$GetClient$clients$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? idClient = _undefined,
    Object? name = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? identification = _undefined,
    Object? phone = _undefined,
    Object? birthDay = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetClient$clients$items(
      idClient: idClient == _undefined
          ? _instance.idClient
          : (idClient as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      fullName: fullName == _undefined
          ? _instance.fullName
          : (fullName as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      birthDay: birthDay == _undefined
          ? _instance.birthDay
          : (birthDay as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetClient$clients$items<TRes>
    implements CopyWith$Query$GetClient$clients$items<TRes> {
  _CopyWithStubImpl$Query$GetClient$clients$items(this._res);

  TRes _res;

  call({
    String? idClient,
    String? name,
    String? lastName,
    String? fullName,
    String? email,
    String? identification,
    String? phone,
    String? birthDay,
    String? $__typename,
  }) => _res;
}
