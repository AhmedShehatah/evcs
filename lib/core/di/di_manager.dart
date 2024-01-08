// ignore_for_file: unused_element

import 'package:evcs/data/repositories/auth/auth_repo.dart';
import 'package:evcs/data/sources/auth/auth_remote_data_source.dart';
import 'package:evcs/features/auth/cubit/auth_cubit.dart';
import 'package:evcs/features/home/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

import '../../app/cubit/application_bloc.dart';
import '../constants/app_colors.dart';
import '../navigator/app_navigator.dart';
import '../network/network_module.dart';
import '../shared_prefs/shared_prefs.dart';

final getIt = GetIt.instance;

class DIManager {
  DIManager._();
  static Future<void> initDI() async {
    /// -------------- Setup -------------------
    await _setupSharedPreference();
    _injectDep(NetworkModule.provideDio());
    _injectDep(ApplicationCubit());
    _injectDep(AppNavigator());
    _injectDep(AppColorsController());

    // -------------- remote data sources ------------------
    _injectDep(AuthRemoteDataSource());

    // ------------------- repositories -------------------
    _injectDep<IAuthRepo>(AuthRepo(findDep()));

    /// ------------------ blocs ----------------
    _injectDep(HomeCubit());

    _injectDep(AuthCubit(findDep()));
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

  static ApplicationCubit findAC() {
    return findDep<ApplicationCubit>();
  }

  static dispose() {
    findAC().close();
  }
}
