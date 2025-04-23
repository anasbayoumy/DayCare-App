import 'package:daycarefirst/features/auth/presentation/widgets/auth_button.dart';
import 'package:daycarefirst/features/auth/presentation/widgets/auth_textfield_norm.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomtextfieldNorm(
              hint: 'Email',
              prefixIcon: const Icon(Icons.email),
              myController: emailController,
              valid: (value) => null,
              isNumber: false,
              isEmail: true,
              isPassword: false,
            ),
            const SizedBox(height: 16),
            CustomtextfieldNorm(
                hint: 'Password',
                prefixIcon: const Icon(Icons.key_outlined),
                myController: passwordController,
                valid: (value) => null,
                isNumber: false,
                isEmail: false,
                isPassword: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    // isPasswordVisible.value = !isPasswordVisible.value;
                  },
                  icon: const Icon(Icons.visibility),
                  //   isPasswordVisible.value
                  //       ? Icons.visibility
                  //       : Icons.visibility_off,
                  // ),
                )),
            const SizedBox(height: 20),
            CustomButtonAuth(
              onPressed: () {
                // Handle login logic here
              },
              childText: 'Login',
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to the registration page
              },
              child: const Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
