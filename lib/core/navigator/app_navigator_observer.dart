// ignore_for_file: avoid_print

import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/features/auth/pages/login_screen.dart';
import 'package:evcs/features/auth/pages/register_screen.dart';
import 'package:evcs/features/home/pages/home_screen.dart';
import 'package:evcs/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (HomeScreen.routeName == route.settings.name ||
        SplashScreen.routeName == route.settings.name ||
        RegisterScreen.routeName == route.settings.name ||
        LoginScreen.routeName == route.settings.name ||
        route.settings.name == null) {
      DIManager.findAC().setAppBarStatus(false, route.settings.name ?? '/');
    } else {
      DIManager.findAC().setAppBarStatus(true, route.settings.name ?? '/');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    DIManager.findAC().setAppBarStatus(false, route.settings.name ?? '/');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {}

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('This is never get called didReplace $newRoute | $oldRoute');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    print(
        'This is never get called didStartUserGesture $route | $previousRoute');
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    print('This is never get called didStopUserGesture');
    super.didStopUserGesture();
  }
}
