import 'package:daycarefirst/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:daycarefirst/features/auth/data/repo/auth_repo_imp.dart';
import 'package:daycarefirst/features/auth/domain/usecases/signup_usecase.dart';
import 'package:daycarefirst/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:daycarefirst/features/auth/presentation/pages/signup_page.dart';
import 'package:daycarefirst/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize dependencies
  final authRemoteDataSource = AuthRemoteDataSourceImpl(
    firebaseAuth: FirebaseAuth.instance,
  );
  final authRepo = AuthRepoImp(
    remoteDataSource: authRemoteDataSource,
  );

  runApp(MyApp(authRepo: authRepo));
}

class MyApp extends StatelessWidget {
  final AuthRepoImp authRepo;

  const MyApp({super.key, required this.authRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AuthBloc(
          signupUseCase: SignupUseCase(
              authRepo: AuthRepoImp(
                  remoteDataSource: AuthRemoteDataSourceImpl(
                      firebaseAuth: FirebaseAuth.instance))),
        ),
        child: const SignupPage(),
      ),
    );
  }
}
