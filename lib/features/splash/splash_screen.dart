import 'dart:async';

import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/features/auth/pages/register_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splash-screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      DIManager.findNavigator().offAll(RegisterScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenHelper.width,
        height: ScreenHelper.height,
        color: DIManager.findCC().defaultAppDarkColor,
        child: Center(
          child: CustomImage.rectangle(image: AppAssets.logo),
        ),
      ),
    );
  }
}
