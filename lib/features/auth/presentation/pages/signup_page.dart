import 'package:daycarefirst/features/auth/presentation/pages/Login_page.dart';
import 'package:daycarefirst/features/auth/presentation/widgets/auth_button.dart';
import 'package:daycarefirst/features/auth/presentation/widgets/auth_textfield_norm.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final isPasswordVisible = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Signup'),
              const SizedBox(height: 20),
              CustomtextfieldNorm(
                hint: 'Full Name',
                prefixIcon: const Icon(Icons.person),
                myController: nameController,
                valid: (value) => null,
                isNumber: false,
                isEmail: false,
                isPassword: false,
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
                  icon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 20),
              CustomtextfieldNorm(
                hint: 'Confirm Password',
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
                  icon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(
                onPressed: () {},
                childText: 'Signup',
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('Already have an account? Login'),
              ),
              const SizedBox(height: 20),
              const Text('Or signup with'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                  ),
                  const Text(" | "),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.web),
                  ),
                  const Text(" | "),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.apple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
