import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:flutter/material.dart';

class BackDropWidget extends StatelessWidget {
  const BackDropWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenHelper.width,
      height: ScreenHelper.height,
      color: DIManager.findCC().defaultAppDarkColor,
    );
  }
}
