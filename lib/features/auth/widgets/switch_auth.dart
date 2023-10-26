import 'package:evcs/core/constants/app_style.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:flutter/material.dart';

class SwitchAuth extends StatelessWidget {
  const SwitchAuth({
    super.key,
    required this.onPress,
    required this.title,
    required this.desc,
  });
  final void Function() onPress;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          desc,
          style: AppStyle.lightTitleStyle,
        ),
        const HorizontalPadding(2),
        GestureDetector(
          onTap: onPress,
          child: Text(
            title,
            style: AppStyle.titleStyle.copyWith(
              color: DIManager.findCC().primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
