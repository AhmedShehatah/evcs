import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/features/onboarding/widgets/dummy_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding-screen';
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        bodyPadding: Dimens.defaultPageHorizontalPadding,
        showNextButton: true,
        next: Text(translate('next')),
        done: Text(
          translate('done'),
        ),
        pages: [
          dummyPage(),
          dummyPage(),
          dummyPage(),
        ],
        onDone: () {},
      ),
    );
  }
}
