import 'package:evcs/core/constants/app_style.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/string_utils/string_utils.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:flutter/material.dart';

class ForogotPassword extends StatelessWidget {
  const ForogotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            CustomSnackbar.showSnackbar('Not Implemented Yet!');
          },
          child: Text(
            translate('Forgot Password?').toCapitalized(),
            style: AppStyle.smallTitleStyle.copyWith(
              color: DIManager.findCC().linkBlue,
            ),
          ),
        ),
      ],
    );
  }
}
