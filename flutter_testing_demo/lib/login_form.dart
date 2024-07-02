import 'package:flutter/material.dart';
import 'package:flutter_testing_demo/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            key: const ValueKey('username'),
            controller: _usernameController,
            decoration: const InputDecoration(labelText: 'Username'),
          ),
          TextFormField(
            key: const ValueKey('password'),
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          ElevatedButton(
            key: const ValueKey('login_button'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
