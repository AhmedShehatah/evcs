import 'package:evcs/core/assets/assets.gen.dart';
import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_floating_button.dart';
import 'package:evcs/core/design/loading_widgets/custom_loading.dart';
import 'package:evcs/core/design/text/app_custom_text.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/widgets/images/custom_image.dart';
import 'package:evcs/data/models/garage/garage.dart';

import 'package:evcs/features/cars/pages/add_car_screen.dart';
import 'package:evcs/features/garage/cubit/garage_cubit.dart';
import 'package:evcs/features/garage/cubit/garage_state.dart';
import 'package:evcs/features/garage/widgets/garage_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              if (state.garageState is BaseLoadingState) {
                return const CustomLoading();
              }
              final garage = (state.garageState as BaseSuccessState).data;
              if (state.garageState is BaseSuccessState && garage.isNotEmpty) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: garage.length,
                  itemBuilder: (ctx, idx) {
                    return GarageListItem(car: garage[idx]);
                  },
                );
              }
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120),
                  child: Column(children: [
                    CustomImage.rectangle(
                      image: Assets.images.noVehicle.path,
                      width: 273.w,
                      height: 252.h,
                    ),
                    CustomText.s20("You did not add any vehicle.")
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
