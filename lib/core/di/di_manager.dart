// ignore_for_file: unused_element

import 'dart:io';

import 'package:evcs/core/localization/app_localizations.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/data/repositories/auth/auth_repo.dart';
import 'package:evcs/data/repositories/plan/plan_repository.dart';
import 'package:evcs/data/sources/auth/auth_remote_data_source.dart';
import 'package:evcs/data/sources/plan/plan_remote_data_source.dart';
import 'package:evcs/features/auth/cubit/auth_cubit.dart';
import 'package:evcs/features/home/cubit/home_cubit.dart';
import 'package:evcs/features/plans/cubit/plan_cubit.dart';
import 'package:flutter/material.dart';
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
    _initLocalizations();

    // -------------- remote data sources ------------------
    _injectDep(AuthRemoteDataSource());
    _injectDep(PlanRemoteDataSource());

    // ------------------- repositories -------------------
    _injectDep<IAuthRepo>(AuthRepo(findDep()));
    _injectDep<IPlanRepository>(PlanRepository(findDep()));

    /// ------------------ blocs ----------------
    _injectDep(HomeCubit());

    _injectDep(AuthCubit(findDep()));
    _injectDep(PlanCubit(findDep()));
  }

  static _initLocalizations() {
    final deviceLocale = Locale(Platform.localeName.split('_').first);
    // ignore: unused_local_variable
    final locale = AppLocalizations.supportedLocales.firstWhere(
      (element) => element.languageCode == deviceLocale.languageCode,
      orElse: () => AppLocalizations.supportedLocales.first,
    );
    // sl.registerSingleton(
    //     LocaleCubit(locale: kDebugMode ? const Locale('ar') : locale));
    _injectDep(LocaleCubit(locale: const Locale("en")));
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
