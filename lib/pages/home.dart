import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poi_app/blocs/test/test_bloc.dart';
import 'package:poi_app/router/routes.dart';
import 'package:poi_app/widgets/click_counter_widget.dart';

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
        child:  BlocBuilder<TestBloc, TestState>(
        builder: (context, state) { 
          if(state is WaitForClick){
            return ClickCounterWidget(
              message: 'Welcome home, $username!', 
              onClick: () { 
                     context.read<TestBloc>().clicked();
                    },);
          } else {
            return ClickCounterWidget(
              message: (state as Clicked).clicks.toString(), 
              onClick: () { 
                     context.read<TestBloc>().clicked();
                    },);
          }
        }),
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