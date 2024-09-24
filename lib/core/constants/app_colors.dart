import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColorsController {
  AppColorsController();

  final Rx<Color?> _primaryColor = const Color(0xFF66AD28).obs;
  final String _primaryColorStr = "#66AD28";

  Color get primaryColor => _primaryColor.value ?? defaultPrimaryColor;

  String get primaryColorStr => _primaryColorStr;
  Color defaultAppDarkColor = const Color(0xFF1E2022);
  final defaultPrimaryColor = const Color(0xFF66AD28);
  Color black = Colors.black;
  Color bottomSheetShadow = const Color(0xFF000019);
  Color greyTextColor = const Color(0xFF505050);
  Color lightGreyColor = const Color(0xFF757575);
  Color veryLightGreyColor = const Color(0xFFB8BFC5);
  Color hintTextColor = const Color(0xFF646464);
  Color greyLightTextColor = const Color(0xFFA6A6A6);
  Color navyBlue = const Color(0xAA033B44);
  Color scaffoldBGColor = Colors.white;

  Color linkBlue = const Color(0xff2072FF);

  Color borderTextFieldColor = Colors.grey.withOpacity(0.3);
  Color borderButtonColor = Colors.grey.withOpacity(0.5);

  Color textButtonBackground = const Color(0x00000000);

  Color priorityColor = const Color(0xFF8DCA26);

  Color darkGreyTextColor = const Color(0xFF484747);
  Color darkGreyTextColor2 = const Color(0xFF7D7D7D);
  Color greyTextColor2 = const Color(0xFF838383);
  Color transparent = const Color.fromARGB(0, 0, 0, 0);

  Color notSelectedGrey = const Color(0xFF7A8FA6);
  Color greyCardBackgroundColor = const Color(0xFFE2E2E2);
  Color white = Colors.white;
  Color red = const Color(0xFFE42424);
  Color formFieldBackgroundColor = const Color(0xFFE9E9E9);
  Color defaultGreyBackgroundColor = const Color(0xFFE9E9E9);
  LinearGradient cardGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFF66AD28), Color(0xFF2A4710)]);
}
