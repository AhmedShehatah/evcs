// ignore_for_file: unused_element

import '../constants/app_colors.dart';
import '../navigator/app_navigator.dart';
import '../network/network_module.dart';
import '../shared_prefs/shared_prefs.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

final getIt = GetIt.instance;

class DIManager {
  DIManager._();
  static Future<void> initDI() async {
    await _setupSharedPreference();

    _injectDep(NetworkModule.provideDio());
  }

  static T findDep<T extends Object>() {
    return getIt<T>();
  }

  static AppNavigator findNavigator() {
    return findDep<AppNavigator>();
  }

  static AppColorsController findCC() {
    return findDep<AppColorsController>();
  }

  static T _injectDep<T extends Object>(T dependency) {
    getIt.registerSingleton<T>(dependency);
    return getIt<T>();
  }

  static _setupSharedPreference() async {
    await GetStorage.init();
    _injectDep(SharedPrefs());
  }
}
