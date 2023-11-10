import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/features/home/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../../features/garage/page/garage_screen.dart';
import '../../../constants/app_assets.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 128.0,
              height: 128.0,
              margin: const EdgeInsets.only(
                top: 24.0,
                bottom: 64.0,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppAssets.power_plugin,
              ),
            ),
            ListTile(
              onTap: () {
                DIManager.findNavigator().pushNamed(HomeScreen.routeName);
                DIManager.findAC().closeDrawer();
              },
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                DIManager.findNavigator().pushNamed(GarageScreen.routeName);
                DIManager.findAC().closeDrawer();
              },
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('My Garage'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.favorite),
              title: const Text('Favourites'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
