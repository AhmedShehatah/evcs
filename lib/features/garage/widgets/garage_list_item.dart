import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GarageListItem extends StatelessWidget {
  const GarageListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenHelper.fromHeight(18),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.cardBorderRadiusBig),
        ),
        margin: Dimens.cardMargins,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: Dimens.cardInternalPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildCarImage(),
                    const HorizontalPadding(2),
                    _buildCarInfo(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: _buildEditPin(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: _buildDeletePin(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarInfo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text3Title('Tesla Model A'),
        Text2Title('Red'),
        VerticalPadding(3),
        Text3Title("ABC 123"),
      ],
    );
  }

  Widget _buildEditPin() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(Dimens.bigBorderRadius),
        topRight: Radius.circular(Dimens.cardBorderRadiusBig),
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: Dimens.menuPadding,
          color: DIManager.findCC().veryLightGreyColor,
          child: Icon(
            Icons.edit,
            color: DIManager.findCC().white,
          ),
        ),
      ),
    );
  }

  Widget _buildDeletePin() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        CupertinoIcons.delete,
        color: DIManager.findCC().red,
      ),
    );
  }

  Widget _buildCarImage() {
    return CustomImage.rectangle(
      image: AppAssets.car_placeholder,
      width: ScreenHelper.fromWidth(18),
      height: ScreenHelper.fromHeight(10),
      boxFit: BoxFit.contain,
    );
  }
}
