import 'package:daycarefirst/core/errors/failure.dart';
import 'package:daycarefirst/core/usecase/usecase.dart';
import 'package:daycarefirst/features/auth/domain/entities/UserEntity.dart';
import 'package:daycarefirst/features/auth/domain/repo/auth_repo.dart';
import 'package:fpdart/fpdart.dart';

class SignupUseCase extends UseCase<UserEntity, SignupParams> {
  final AuthRepo authRepo;
  SignupUseCase({required this.authRepo});
  @override
  Future<Either<Failure, UserEntity>> call(SignupParams params) async {
    return await authRepo.signUp(
      email: params.email,
      password: params.password,
      name: params.name,
      phoneNumber: params.phoneNumber,
      address: params.address,
      photoUrl: params.photoUrl,
    );
  }
}

class SignupParams {
  final String email;
  final String password;
  final String name;
  final String phoneNumber;
  final String address;
  final String photoUrl;
  SignupParams({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.photoUrl,
  });
}
