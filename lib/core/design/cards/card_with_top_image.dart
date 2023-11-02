import 'package:evcs/core/design/cards/custom_card.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/material.dart';

class CardWithTopImage extends StatelessWidget {
  const CardWithTopImage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.imageHeight,
    required this.imageWidth,
    this.borderWidth,
    this.borderColor,
    required this.onPress,
  });
  final String imagePath;
  final String title;
  final double imageHeight;
  final double imageWidth;
  final double? borderWidth;
  final Color? borderColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        onPress: onPress,
        borderColor: borderColor,
        borderWidth: borderWidth,
        child: SizedBox(
          // color: Colors.black,
          width: ScreenHelper.fromWidth(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImage.rectangle(
                image: imagePath,
                height: imageHeight,
                width: imageWidth,
              ),
              const VerticalPadding(1),
              Text3Title(
                translate(title),
              ),
            ],
          ),
        ));
  }
}
