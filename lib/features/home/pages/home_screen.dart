import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/features/home/cubit/home_cubit.dart';
import 'package:evcs/features/home/widgets/map_widget.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MapWidget(),
            // Align(
            //   // top: ScreenHelper.fromHeight(25),
            //   // left: ScreenHelper.fromWidth(43),
            //   // right: ScreenHelper.width / 2,
            //   child: Image.asset(AppAssets.map_marker),
            // ),
            // if (!_isHoldingScreen)
            //   const Align(
            //     alignment: Alignment.bottomCenter,
            //     child: CustomBottomSheet(),
            //   )
          ],
        ),
      ),
    );
  }
}
