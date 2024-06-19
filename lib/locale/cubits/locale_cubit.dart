import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'locale_state.dart';

class LocaleCubit extends HydratedCubit<LocaleState> {
  LocaleCubit() : super(const LocaleState());

  @override
  LocaleState? fromJson(Map<String, dynamic> json) =>
      LocaleState(Locale(json['locale'] as String));

  @override
  Map<String, dynamic>? toJson(LocaleState state) => {
        'locale': state.locale?.languageCode,
      };

  void setLocale(Locale? locale) => emit(LocaleState(locale));
}