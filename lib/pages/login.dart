import 'package:flutter/material.dart';

import '../router/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Text('Please Login'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.exit_to_app),
       onPressed: () {
          var username = 'BSD';
          Navigator.pushReplacementNamed(context, Routes.home(username));
        },
      ),
    );
  }
}