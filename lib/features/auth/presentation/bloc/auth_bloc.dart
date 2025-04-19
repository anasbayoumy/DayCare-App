import 'package:daycarefirst/features/auth/domain/entities/UserEntity.dart';
import 'package:daycarefirst/features/auth/domain/repo/auth_repo.dart';
import 'package:daycarefirst/features/auth/domain/usecases/signup_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignupUseCase _signupUseCase;

  AuthBloc({
    required SignupUseCase signupUseCase,
  })  : _signupUseCase = signupUseCase,
        super(AuthInitial()) {
    on<AuthEventSignUp>(_onAuthSignUp);
    on<AuthEvent>((_, emit) => emit(AuthLoading()));
  }
  void _onAuthSignUp(
    AuthEventSignUp event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final result = await _signupUseCase(SignupParams(
        email: event.email,
        password: event.password,
        name: event.name,
        phoneNumber: event.phoneNumber,
        address: event.address,
        photoUrl: event.photoUrl!,
      ));
      result.fold(
        (l) => emit(AuthError(message: l.message)),
        (r) => emit(AuthSuccess(user: r)),
      );
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
