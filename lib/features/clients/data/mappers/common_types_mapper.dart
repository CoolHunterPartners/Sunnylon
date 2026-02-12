import '../../../../core/api/graphql/queries/common_queries.graphql.dart';
import '../../../../core/common/entities/key_value_option.dart';
import '../../domain/entities/common_types.dart';

extension CommonTypesMapper on Query$Common {
  CommonTypes toDomain() {
    return CommonTypes(
      genders:
          genders
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
      currencies:
          currencies
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
      provinces:
          provinces
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
      identificationTypes:
          identificationTypes
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
      relatedTypes:
          relatedType
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
      relationshipTypes:
          relationShiptType
              ?.map(
                (e) => KeyValueOption(key: e?.key ?? '', value: e?.value ?? ''),
              )
              .toList() ??
          [],
    );
  }
}
