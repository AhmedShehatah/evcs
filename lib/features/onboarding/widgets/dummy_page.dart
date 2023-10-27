import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../core/di/di_manager.dart';

PageViewModel dummyPage() {
  return PageViewModel(
    title: 'Onboarding Screen',
    body: 'hello world',
    image: CustomImage.rectangle(
      image: AppAssets.onboarding_image,
    ),
    decoration: PageDecoration(
        bodyTextStyle: TextStyle(
      color: DIManager.findCC().primaryColor,
    )),
  );
}
