import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/text/app_custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/data/models/garage/garage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GarageListItem extends StatelessWidget {
  final Garage car;
  const GarageListItem({super.key, required this.car});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            CustomText.s13(
              '${car.brand} - ',
              color: DIManager.findCC().black,
            ),
            CustomText.s13(
              car.model,
              color: DIManager.findCC().black,
            ),
          ],
        ),
        CustomText.s12(
          car.color,
          color: DIManager.findCC().greyTextColor,
        ),
        const VerticalPadding(3),
        CustomText.s14(
          car.plateNumber,
          color: DIManager.findCC().defaultAppDarkColor,
          bold: true,
        ),
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
