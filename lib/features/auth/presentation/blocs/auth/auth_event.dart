import 'package:equatable/equatable.dart';
import 'package:sunnylon/features/auth/domain/entities/user.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

final class CheckAuthStatus extends AuthEvent {}

final class SignOut extends AuthEvent {}

final class AuthStateChanged extends AuthEvent {
  final User user;

  const AuthStateChanged(this.user);

  @override
  List<Object?> get props => [user];
}
