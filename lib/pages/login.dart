import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../locale/cubits/locale_cubit.dart';
import '../router/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LocaleCubit>().setLocale(Localizations.localeOf(context));
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