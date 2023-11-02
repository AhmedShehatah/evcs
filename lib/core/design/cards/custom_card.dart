import 'package:evcs/core/constants/dimens.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double? borderWidth;
  final Color? borderColor;
  final Function() onPress;
  const CustomCard({
    super.key,
    required this.child,
    this.borderWidth,
    this.borderColor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
        side: BorderSide(
          width: borderWidth ?? 0,
          color: borderColor ?? const Color(0xFFFFFFFF),
        ),
      ),
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: Dimens.cardInternalPadding,
          child: child,
        ),
      ),
    );
  }
}
