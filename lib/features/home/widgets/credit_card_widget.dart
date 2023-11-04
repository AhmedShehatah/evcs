import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/bottom_sheet/custom_bottom_sheet.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/material.dart';

class CreditCardHomeWidget extends StatelessWidget {
  const CreditCardHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      child: Container(
        color: DIManager.findCC().defaultGreyBackgroundColor,
        padding: Dimens.cardInternalPadding,
        width: ScreenHelper.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImage.rectangle(
                  image: AppAssets.visa,
                  height: Dimens.cardImageHeight,
                  width: Dimens.cardImageWidth,
                  boxFit: BoxFit.contain,
                ),
                const HorizontalPadding(1),
                Text3Title(translate('1234*****4243')),
              ],
            ),
            InkWell(
              onTap: () {
                CustomBottomSheet.showBottomSheet(const Placeholder());
              },
              child: Row(
                children: [
                  const Icon(Icons.add),
                  const VerticalPadding(1),
                  Text2Title(translate('Add or choose another Credit Card'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
