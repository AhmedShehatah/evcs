import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_consts.dart';
import '../../../core/di/di_manager.dart';
import '../../../core/shared_prefs/shared_prefs.dart';
import 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.initialState());

  Future<void> init() async {}

  final List<Locale> supportedLanguages = [
    const Locale(AppConsts.LANG_AR),
    const Locale(AppConsts.LANG_EN)
  ];

  void showLoading() {
    emit(state.copyWith(loadingState: const BaseLoadingState()));
  }

  void hideLoading() {
    emit(state.copyWith(loadingState: const BaseInitState()));
  }

  Locale _appLanguage =
      Locale(DIManager.findDep<SharedPrefs>().appLanguageCode.val);

  set appLanguage(Locale value) {
    _appLanguage = value;
    Get.updateLocale(value);
    // save language in shared prefs
    DIManager.findDep<SharedPrefs>().appLanguageCode.val = value.languageCode;
  }

  Locale get appLanguage => _appLanguage;

  void changeLanguage(String langCode) {
    appLanguage = supportedLanguages
        .firstWhere((element) => element.languageCode == langCode);
  }

  final _drawerController = AdvancedDrawerController();
  AdvancedDrawerController get drawerController => _drawerController;

  void openDrawer() {
    _drawerController.showDrawer();
  }

  void closeDrawer() {
    _drawerController.hideDrawer();
  }
}
