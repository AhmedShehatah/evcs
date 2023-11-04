import 'package:evcs/app/cubit/application_bloc.dart';
import 'package:evcs/app/cubit/application_state.dart';
import 'package:evcs/core/design/loading_widgets/custom_loading.dart';
import 'package:evcs/core/design/root/widgets/app_drawer.dart';
import 'package:evcs/core/design/root/widgets/back_drop_widget.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key, this.child});
  final Widget? child;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: const BackDropWidget(),
      controller: DIManager.findAC().drawerController,
      animationCurve: Curves.bounceInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: true,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const AppDrawer(),
      child: Scaffold(
        body: Stack(
          children: [
            widget.child!,
            BlocBuilder<ApplicationCubit, ApplicationState>(
              buildWhen: (o, n) => o.loadingState != n.loadingState,
              bloc: DIManager.findAC(),
              builder: (context, state) {
                var loadingState = state.loadingState;
                if (loadingState is BaseLoadingState) {
                  return const CustomLoading();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
