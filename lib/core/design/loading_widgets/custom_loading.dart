import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenHelper.width,
      height: ScreenHelper.height,
      color: DIManager.findCC().greyLightTextColor.withOpacity(0.5),
      child: Center(
        child: SizedBox(
          width: ScreenHelper.fromWidth(30),
          height: ScreenHelper.fromHeight(30),
          child: LottieBuilder.asset(
            AppAssets.loading,
          ),
        ),
      ),
    );
  }
}
