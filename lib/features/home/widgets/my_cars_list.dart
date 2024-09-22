import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/cards/card_with_top_image.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:flutter/material.dart';

class MyCarsListWidget extends StatefulWidget {
  const MyCarsListWidget({super.key});

  @override
  State<MyCarsListWidget> createState() => _MyCarsListWidgetState();
}

class _MyCarsListWidgetState extends State<MyCarsListWidget> {
  int selectedIdx = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenHelper.fromHeight(15),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, idx) {
          if (idx <= 3) {
            return _buildItem(idx);
          } else {
            return _buildAddItem();
          }
        },
        itemCount: 5,
      ),
    );
  }

  Widget _buildItem(int idx) {
    return CardWithTopImage(
      borderColor:
          (idx == selectedIdx) ? DIManager.findCC().primaryColor : null,
      borderWidth: (idx == selectedIdx) ? 2 : 0,
      imagePath: AppAssets.car_placeholder,
      title: 'Tesla A',
      imageHeight: Dimens.cardImageHeight,
      imageWidth: Dimens.cardImageWidth,
      onPress: () {
        setState(() {
          selectedIdx = idx;
        });
      },
    );
  }

  Widget _buildAddItem() {
    return CardWithTopImage(
      imagePath: AppAssets.grey_add,
      title: 'Add New Car',
      imageHeight: Dimens.bigIconSize,
      imageWidth: Dimens.bigIconSize,
      onPress: () {},
    );
  }
}
