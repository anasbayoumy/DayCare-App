import 'package:daycarefirst/core/errors/failure.dart';
import 'package:daycarefirst/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:daycarefirst/features/auth/data/models/user.dart';
import 'package:daycarefirst/features/auth/domain/entities/UserEntity.dart';
import 'package:daycarefirst/features/auth/domain/repo/auth_repo.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepoImp({required this.remoteDataSource});
  @override
  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    required String name,
    required String phoneNumber,
    required String address,
    required String photoUrl,
  }) async {
    try {
      final user = await remoteDataSource.signUp(UserModel(
        email: email,
        password: password,
        name: name,
        phoneNumber: phoneNumber,
        address: address,
        photoUrl: photoUrl,
      ));
      return right(user);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
