part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthEventSignIn extends AuthEvent {
  final String email;
  final String password;

  AuthEventSignIn({required this.email, required this.password});
}

class AuthEventSignUp extends AuthEvent {
  final String email;
  final String password;

  AuthEventSignUp({required this.email, required this.password});
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

class AuthLoading extends AuthEvent {}

class AuthError extends AuthEvent {
  final String message;

  AuthError({required this.message});
}
