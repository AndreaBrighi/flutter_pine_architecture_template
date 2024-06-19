import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../languages/l10n/l10n.dart';
import '../locale/cubits/locale_cubit.dart';

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<LocaleCubit>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            iconEnabledColor: Colors.blue,
            dropdownColor: Colors.white,
            onChanged: (d) {},

            // value: const Locale("en"),

            value: provider.state.locale ?? const Locale("en"),

            items: L10n.all.map<DropdownMenuItem<Locale>>((value) {
              return DropdownMenuItem<Locale>(
                value: value,
                child: Text(
                  value.toString(),
                  style: const TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  provider.setLocale(value);
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
