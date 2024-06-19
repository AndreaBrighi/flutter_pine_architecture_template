import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'custom_drop_down.dart';


class ClickCounterWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onClick;

  const ClickCounterWidget({super.key, required this.message, this.onClick});


  @override
  Widget build(BuildContext context) {
    return ListView(
              children:[
                const CustomDropDownWidget(),
                Center(child: Text(message)),
                TextButton(
                  onPressed: onClick,
                  child: Text(AppLocalizations.of(context)!.click),
                )
              ]);
  }
}