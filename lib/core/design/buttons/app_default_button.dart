import 'package:evcs/core/constants/app_style.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDefaultButton extends StatelessWidget {
  const AppDefaultButton({
    super.key,
    required this.onPress,
    required this.title,
    this.isEnabled = true,
    this.width = 0,
    this.iconPath,
  });
  final void Function() onPress;
  final String title;
  final bool isEnabled;
  final double width;
  final String? iconPath;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: DIManager.findCC().primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              Dimens.buttonBorderRadius,
            ))),
        child: Container(
          width: width == 0 ? ScreenHelper.width : width,
          padding: Dimens.cardInternalPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconPath != null) SvgPicture.string(iconPath!),
              if (iconPath != null) const HorizontalPadding(3),
              Text(
                title,
                style: AppStyle.bigTitleStyle.copyWith(
                  color: DIManager.findCC().white,
                ),
              )
            ],
          ),
        ));
  }
}
