import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/locale_cubit.dart';

typedef LocaleSelectorWidgetBuilder = Widget Function(
    BuildContext, Locale? locale);

class LocaleSelector extends StatelessWidget {
  final LocaleSelectorWidgetBuilder builder;

  const LocaleSelector({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) => builder(
          context,
          state.locale
        ),
      );
}