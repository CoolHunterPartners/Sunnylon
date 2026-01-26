import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String profileId;
  final String email;
  final String firstName;
  final String lastName;
  final String phone;

  const User({
    required this.id,
    required this.profileId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
  });

  String get name => '$firstName $lastName';

  static const empty = User(
    id: '',
    profileId: '',
    email: '',
    firstName: '',
    lastName: '',
    phone: '',
  );

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [id, profileId, email, firstName, lastName, phone];
}
