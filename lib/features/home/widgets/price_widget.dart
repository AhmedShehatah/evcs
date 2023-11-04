import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      child: Container(
        color: DIManager.findCC().defaultGreyBackgroundColor,
        padding: EdgeInsets.symmetric(
          vertical: ScreenHelper.fromHeight(2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage.rectangle(image: AppAssets.power_plugin),
            const HorizontalPadding(3),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text2Title(
                        translate(
                          'Cost',
                        ),
                      ),
                      const VerticalPadding(2),
                      Text2Title(translate('Rate'))
                    ],
                  ),
                  Container(
                    color: DIManager.findCC().darkGreyTextColor,
                    width: 1,
                    height: ScreenHelper.fromHeight(4),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text2Title(
                        translate(
                          '3\$',
                        ),
                      ),
                      const VerticalPadding(2),
                      Text2Title(translate('1KW'))
                    ],
                  ),
                ],
              ),
            ),
            const HorizontalPadding(3),
          ],
        ),
      ),
    );
  }
}
