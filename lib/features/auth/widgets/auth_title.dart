import 'package:evcs/core/utils/string_utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_style.dart';
import '../../../core/utils/localization/app_localizations.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      translate(title).toCapitalized(),
      style: AppStyle.bigTitleStyle,
    );
  }
}
