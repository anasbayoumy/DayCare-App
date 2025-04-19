import 'package:daycarefirst/core/errors/failure.dart';
import 'package:daycarefirst/features/auth/domain/entities/UserEntity.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    required String name,
    required String phoneNumber,
    required String address,
    required String photoUrl,
  });
}
