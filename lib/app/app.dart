// ignore_for_file: library_private_types_in_public_api

import 'package:evcs/core/design/root/page/root_screen.dart';
import 'package:evcs/core/localization/app_localizations.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/features/profile/profile_screen.dart';
import 'package:evcs/features/splash/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_consts.dart';
import '../../core/constants/app_font.dart';
import '../../core/constants/app_style.dart';
import '../../core/di/di_manager.dart';
import '../../core/localization/translations.dart';
import '../../core/navigator/route_generator.dart';
import '../../core/utils/screen_utils/device_utils.dart';
import '../core/navigator/app_navigator_observer.dart';
import 'cubit/application_bloc.dart';
import 'cubit/application_state.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: DIManager.findCC().primaryColor,
      ),
      child: ScreenUtilInit(
        designSize: const Size(376, 812),
        builder: (context, _) {
          return BlocBuilder<LocaleCubit, Locale>(
            bloc: DIManager.findDep<LocaleCubit>(),
            builder: (context, state) {
              return GetMaterialApp(
                // textDirection:
                //     DIManager.findDep<LocaleCubit>().getTextDirection(),
                enableLog: false,
                navigatorObservers: [AppNavigatorObserver()],
                onGenerateRoute: RouteGenerator.generateRoutes,
                debugShowCheckedModeBanner: false,
                builder: (BuildContext context, Widget? widget) {
                  ScreenHelper(context);
                  return RootScreen(
                    child: widget,
                  );
                },
                theme: ThemeData(
                  textTheme: AppFont.getTextTheme(Theme.of(context).textTheme),
                  tabBarTheme: TabBarTheme(
                    labelColor:
                        DIManager.findDep<AppColorsController>().primaryColor,
                    unselectedLabelColor:
                        DIManager.findDep<AppColorsController>().greyTextColor,
                    labelStyle: AppStyle.tabBarLabelStyle,
                    unselectedLabelStyle: AppStyle.tabBarUnselectedLabelStyle,
                  ),
                  primaryColor:
                      DIManager.findDep<AppColorsController>().primaryColor,
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      foregroundColor:
                          DIManager.findDep<AppColorsController>().primaryColor,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  colorScheme: const ColorScheme.light(),
                ),
                title: AppConsts.appName,

                locale: state,
                // locale: Locale(AppConsts.LANG_AR),
                //fallbackLocale: const Locale(AppConsts.LANG_DEFAULT),
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: const [
                  ...AppLocalizations.localizationsDelegates
                ],
                initialRoute: ProfileScreen.routeName,
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    DIManager.dispose();
    super.dispose();
  }
}
