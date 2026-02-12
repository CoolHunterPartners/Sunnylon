import 'package:equatable/equatable.dart';

class CreateClientParams extends Equatable {
  final String name;
  final String lastName;
  final String genderId;
  final String identificationTypeId;
  final String identification;
  final String birthDay; // YYYY-MM-DD
  final String phone;
  final String email;

  const CreateClientParams({
    required this.name,
    required this.lastName,
    required this.genderId,
    required this.identificationTypeId,
    required this.identification,
    required this.birthDay,
    required this.phone,
    required this.email,
  });

  @override
  List<Object?> get props => [
    name,
    lastName,
    genderId,
    identificationTypeId,
    identification,
    birthDay,
    phone,
    email,
  ];
}
