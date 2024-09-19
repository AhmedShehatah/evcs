import 'package:evcs/core/constants/dimens.dart';
// import 'package:evcs/core/design/bottom_sheet/custom_bottom_sheet.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/features/home/cubit/home_cubit.dart';
import 'package:evcs/features/home/widgets/book_sheet.dart';
import 'package:evcs/features/home/widgets/map_widget.dart';
import 'package:evcs/features/home/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/ui/bottom_sheet/custom_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    DIManager.findDep<HomeCubit>().getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const MapWidget(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: Dimens.menuPadding,
                child: const HomeMenuWidget(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: Dimens.cardInternalPadding,
                child: AppDefaultButton(
                    onPress: () {
                      CustomBottomSheet.showBottomSheet(const BookSheet());
                    },
                    title: DIManager.findDep<LocaleCubit>()
                        .appLocalizations
                        .helloWorld),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
