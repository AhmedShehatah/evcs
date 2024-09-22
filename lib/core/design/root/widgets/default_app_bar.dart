import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String screenName;
  const DefaultAppBar({
    super.key,
    required this.screenName,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: ScreenHelper.fromWidth(25),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => DIManager.findNavigator().pop(),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        color: DIManager.findCC().darkGreyTextColor,
      ),
      elevation: 0,
      title: Text5Title(translate(screenName)),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
