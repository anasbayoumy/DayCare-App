import 'package:daycarefirst/core/errors/failure.dart';
import 'package:daycarefirst/features/auth/data/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signUp(UserModel user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  AuthRemoteDataSourceImpl({required this.firebaseAuth});
  @override
  Future<UserModel> signUp(UserModel user) async {
    try {
      final response = await firebaseAuth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      final userCredential = response.user;
      return user.copyWith(
        id: userCredential!.uid,
      );
    } on FirebaseAuthException catch (e) {
      throw Failure(e.message!);
    } catch (e) {
      throw Failure(e.toString());
    }


  }
  @override
  Future<UserModel> signIn(UserModel user) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      final userCredential = response.user;
      return user.copyWith(
        id: userCredential!.uid,
      );
    } on FirebaseAuthException catch (e) {
      throw Failure(e.message!);
    } catch (e) {
      throw Failure(e.toString());
    }
  }
  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw Failure(e.message!);
    } catch (e) {
      throw Failure(e.toString());
    }
  }
  @override 
  
}
