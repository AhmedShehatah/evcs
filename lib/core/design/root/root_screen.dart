import 'package:evcs/app/cubit/application_bloc.dart';
import 'package:evcs/app/cubit/application_state.dart';
import 'package:evcs/core/design/loading_widgets/custom_loading.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          child!,
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
    );
  }
}
