import 'package:flutter/material.dart';

class ClickCounterWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onClick;

  const ClickCounterWidget({super.key, required this.message, this.onClick});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView( 
              children:[ 
                Center(child: Text(message)),
                TextButton(
                  onPressed: onClick,
                  child: const Text("Click me"),
                )
              ]);
  }
}