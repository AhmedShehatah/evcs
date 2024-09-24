import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_floating_button.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/data/models/garage/garage.dart';

import 'package:evcs/features/cars/pages/add_car_screen.dart';
import 'package:evcs/features/garage/cubit/garage_cubit.dart';
import 'package:evcs/features/garage/cubit/garage_state.dart';
import 'package:evcs/features/garage/widgets/garage_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GarageScreen extends StatefulWidget {
  static const String routeName = "My Garage";
  const GarageScreen({super.key});

  @override
  State<GarageScreen> createState() => _GarageScreenState();
}

class _GarageScreenState extends State<GarageScreen> {
  @override
  void initState() {
    super.initState();
    DIManager.findDep<GarageCubit>().getGarage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: AppDefaultFloatingButton(onPress: () {
          DIManager.findNavigator().offAll(AddCarScreen.routeName);
        }),
        body: Padding(
          padding: Dimens.defaultPageHorizontalPaddingSmall,
          child: BlocBuilder<GarageCubit, GarageState>(
              bloc: DIManager.findDep<GarageCubit>(),
              builder: (context, state) {
                if (state.garageState is BaseSuccessState) {
                  final garage = (state.garageState as BaseSuccessState).data;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: garage.length,
                    itemBuilder: (ctx, idx) {
                      return GarageListItem(car: garage[idx]);
                    },
                  );
                }
                return const Center(child: Text("You did not any vehicle."));
              }),
        ));
  }
}
