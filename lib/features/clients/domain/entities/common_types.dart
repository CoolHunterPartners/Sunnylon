import 'package:equatable/equatable.dart';

import '../../../../core/common/entities/key_value_option.dart';

class CommonTypes extends Equatable {
  final List<KeyValueOption> genders;
  final List<KeyValueOption> currencies;
  final List<KeyValueOption> provinces;
  final List<KeyValueOption> identificationTypes;
  final List<KeyValueOption> relatedTypes;
  final List<KeyValueOption> relationshipTypes;

  const CommonTypes({
    required this.genders,
    required this.currencies,
    required this.provinces,
    required this.identificationTypes,
    required this.relatedTypes,
    required this.relationshipTypes,
  });

  @override
  List<Object?> get props => [
    genders,
    currencies,
    provinces,
    identificationTypes,
    relatedTypes,
    relationshipTypes,
  ];
}
