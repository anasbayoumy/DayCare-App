part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthEventSignIn extends AuthEvent {
  final String email;
  final String password;

  AuthEventSignIn({required this.email, required this.password});
}

final class AuthEventSignUp extends AuthEvent {
  final String email;
  final String password;
  final String name;
  final String phoneNumber;
  final String address;
  final String? photoUrl;

  AuthEventSignUp({
    this.photoUrl,
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.address,
  });
}

class AuthEventSignOut extends AuthEvent {}

class AuthEventCheckAuthStatus extends AuthEvent {}

class AuthEventGetCurrentUser extends AuthEvent {}

class AuthEventUpdateUser extends AuthEvent {
  final String email;
  final String password;

  AuthEventUpdateUser({required this.email, required this.password});
}

class AuthEventDeleteUser extends AuthEvent {}

class AuthEventLogout extends AuthEvent {}
