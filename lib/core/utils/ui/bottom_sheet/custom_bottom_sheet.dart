import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet {
  static void showBottomSheet(Widget child) {
    Get.bottomSheet(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalPadding(1),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: ScreenHelper.fromWidth(12),
              child: Divider(
                thickness: 3,
                color: DIManager.findCC().lightGreyColor,
              ),
            ),
          ),
          child,
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimens.bottomSheetBorderRadius),
          topLeft: Radius.circular(Dimens.bottomSheetBorderRadius),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
