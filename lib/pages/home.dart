import 'package:flutter/material.dart';
import 'package:poi_app/router/routes.dart';
class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Welcome home, $username!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.settings_backup_restore),
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.login);
        },
      ),
    );
  }
}