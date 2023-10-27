import 'package:evcs/core/constants/app_style.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: DIManager.findCC().greyLightTextColor,
          ),
        ),
        const HorizontalPadding(5),
        Text(
          translate('or'),
          style: AppStyle.bigTitleStyle.copyWith(
            color: DIManager.findCC().greyLightTextColor,
          ),
        ),
        const HorizontalPadding(5),
        Expanded(
          child: Divider(
            thickness: 1,
            color: DIManager.findCC().greyLightTextColor,
          ),
        ),
      ],
    );
  }
}
