import 'package:daycarefirst/features/auth/data/models/user.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signUp(UserModel user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> signUp(UserModel user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
