import 'package:evcs/core/di/di_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HomeMenuWidget extends StatelessWidget {
  const HomeMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DIManager.findCC().white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () => DIManager.findAC().openDrawer(),
        icon: ValueListenableBuilder<AdvancedDrawerValue>(
          valueListenable: DIManager.findAC().drawerController,
          builder: (_, value, __) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: Icon(
                value.visible ? Icons.clear : Icons.menu,
                key: ValueKey<bool>(value.visible),
              ),
            );
          },
        ),
      ),
    );
  }
}
