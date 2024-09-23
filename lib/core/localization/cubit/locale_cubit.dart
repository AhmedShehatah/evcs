// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:evcs/core/localization/app_localizations.dart';
import 'package:flutter/material.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit({required Locale locale}) : super(locale);

  late AppLocalizations appLocalizations = lookupAppLocalizations(state);
  void toArabic() {
    appLocalizations = lookupAppLocalizations(const Locale('ar'));
    emit(const Locale('ar'));
  }

  void toEnglish() {
    appLocalizations = lookupAppLocalizations(const Locale('en'));
    emit(const Locale('en'));
  }

  TextDirection getTextDirection([TextDirection? textDirection]) {
    if (textDirection != null) return textDirection;
    return state.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
  }
}
