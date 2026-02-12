import 'package:equatable/equatable.dart';

class KeyValueOption extends Equatable {
  final String key;
  final String value;

  const KeyValueOption({required this.key, required this.value});

  @override
  List<Object?> get props => [key, value];
}
