import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:flutter/material.dart';

class AppDefaultFloatingButton extends StatelessWidget {
  final Function() onPress;
  const AppDefaultFloatingButton({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.defaultBorderRadius),
        ),
      ),
      backgroundColor: DIManager.findCC().primaryColor,
      onPressed: onPress,
      child: Icon(
        Icons.add,
        color: DIManager.findCC().white,
      ),
    );
  }
}
