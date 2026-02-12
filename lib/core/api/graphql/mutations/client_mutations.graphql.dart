import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CreateClient {
  factory Variables$Mutation$CreateClient({
    required Input$CreateClientViewModelInput model,
  }) => Variables$Mutation$CreateClient._({r'model': model});

  Variables$Mutation$CreateClient._(this._$data);

  factory Variables$Mutation$CreateClient.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$model = data['model'];
    result$data['model'] = Input$CreateClientViewModelInput.fromJson(
      (l$model as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateClient._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateClientViewModelInput get model =>
      (_$data['model'] as Input$CreateClientViewModelInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$model = model;
    result$data['model'] = l$model.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateClient<Variables$Mutation$CreateClient>
  get copyWith => CopyWith$Variables$Mutation$CreateClient(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateClient ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$model = model;
    return Object.hashAll([l$model]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateClient<TRes> {
  factory CopyWith$Variables$Mutation$CreateClient(
    Variables$Mutation$CreateClient instance,
    TRes Function(Variables$Mutation$CreateClient) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateClient;

  factory CopyWith$Variables$Mutation$CreateClient.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateClient;

  TRes call({Input$CreateClientViewModelInput? model});
}

class _CopyWithImpl$Variables$Mutation$CreateClient<TRes>
    implements CopyWith$Variables$Mutation$CreateClient<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateClient(this._instance, this._then);

  final Variables$Mutation$CreateClient _instance;

  final TRes Function(Variables$Mutation$CreateClient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? model = _undefined}) => _then(
    Variables$Mutation$CreateClient._({
      ..._instance._$data,
      if (model != _undefined && model != null)
        'model': (model as Input$CreateClientViewModelInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateClient<TRes>
    implements CopyWith$Variables$Mutation$CreateClient<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateClient(this._res);

  TRes _res;

  call({Input$CreateClientViewModelInput? model}) => _res;
}

class Mutation$CreateClient {
  Mutation$CreateClient({this.registerClient, this.$__typename = 'Mutation'});

  factory Mutation$CreateClient.fromJson(Map<String, dynamic> json) {
    final l$registerClient = json['registerClient'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateClient(
      registerClient: (l$registerClient as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? registerClient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$registerClient = registerClient;
    _resultData['registerClient'] = l$registerClient;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$registerClient = registerClient;
    final l$$__typename = $__typename;
    return Object.hashAll([l$registerClient, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateClient || runtimeType != other.runtimeType) {
      return false;
    }
    final l$registerClient = registerClient;
    final lOther$registerClient = other.registerClient;
    if (l$registerClient != lOther$registerClient) {
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

extension UtilityExtension$Mutation$CreateClient on Mutation$CreateClient {
  CopyWith$Mutation$CreateClient<Mutation$CreateClient> get copyWith =>
      CopyWith$Mutation$CreateClient(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateClient<TRes> {
  factory CopyWith$Mutation$CreateClient(
    Mutation$CreateClient instance,
    TRes Function(Mutation$CreateClient) then,
  ) = _CopyWithImpl$Mutation$CreateClient;

  factory CopyWith$Mutation$CreateClient.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateClient;

  TRes call({String? registerClient, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateClient<TRes>
    implements CopyWith$Mutation$CreateClient<TRes> {
  _CopyWithImpl$Mutation$CreateClient(this._instance, this._then);

  final Mutation$CreateClient _instance;

  final TRes Function(Mutation$CreateClient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? registerClient = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateClient(
      registerClient: registerClient == _undefined
          ? _instance.registerClient
          : (registerClient as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateClient<TRes>
    implements CopyWith$Mutation$CreateClient<TRes> {
  _CopyWithStubImpl$Mutation$CreateClient(this._res);

  TRes _res;

  call({String? registerClient, String? $__typename}) => _res;
}

const documentNodeMutationCreateClient = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateClient'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'model')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateClientViewModelInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'registerClient'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'model'),
                value: VariableNode(name: NameNode(value: 'model')),
              ),
            ],
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
  ],
);
Mutation$CreateClient _parserFn$Mutation$CreateClient(
  Map<String, dynamic> data,
) => Mutation$CreateClient.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateClient =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$CreateClient?);

class Options$Mutation$CreateClient
    extends graphql.MutationOptions<Mutation$CreateClient> {
  Options$Mutation$CreateClient({
    String? operationName,
    required Variables$Mutation$CreateClient variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateClient? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateClient? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateClient>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$CreateClient(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreateClient,
         parserFn: _parserFn$Mutation$CreateClient,
       );

  final OnMutationCompleted$Mutation$CreateClient? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CreateClient
    extends graphql.WatchQueryOptions<Mutation$CreateClient> {
  WatchOptions$Mutation$CreateClient({
    String? operationName,
    required Variables$Mutation$CreateClient variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateClient? typedOptimisticResult,
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
         document: documentNodeMutationCreateClient,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CreateClient,
       );
}

extension ClientExtension$Mutation$CreateClient on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateClient>> mutate$CreateClient(
    Options$Mutation$CreateClient options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreateClient> watchMutation$CreateClient(
    WatchOptions$Mutation$CreateClient options,
  ) => this.watchMutation(options);
}
