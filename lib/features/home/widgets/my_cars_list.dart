import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/cards/card_with_top_image.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/utils/screen_utils/device_utils.dart';
import 'package:evcs/data/models/garage/garage.dart';
import 'package:evcs/features/garage/cubit/garage_cubit.dart';
import 'package:evcs/features/garage/cubit/garage_state.dart';
import 'package:evcs/features/order/cubit/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCarsListWidget extends StatefulWidget {
  const MyCarsListWidget({super.key});

  @override
  State<MyCarsListWidget> createState() => _MyCarsListWidgetState();
}

class _MyCarsListWidgetState extends State<MyCarsListWidget> {
  int selectedIdx = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenHelper.fromHeight(15),
      child: BlocBuilder<GarageCubit, GarageState>(
        bloc: DIManager.findDep<GarageCubit>(),
        builder: (context, state) {
          if (state.garageState is BaseSuccessState) {
            final data =
                (state.garageState as BaseSuccessState).data as List<Garage>;
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, idx) {
                if (idx < data.length) {
                  return _buildItem(idx, data[idx]);
                } else {
                  return _buildAddItem();
                }
              },
              itemCount: data.length + 1,
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildItem(int idx, Garage item) {
    return CardWithTopImage(
      borderColor:
          (idx == selectedIdx) ? DIManager.findCC().primaryColor : null,
      borderWidth: (idx == selectedIdx) ? 2 : 0,
      imagePath: AppAssets.car_placeholder,
      title: item.brand,
      imageHeight: Dimens.cardImageHeight,
      imageWidth: Dimens.cardImageWidth,
      onPress: () {
        setState(() {
          selectedIdx = idx;
          DIManager.findDep<OrderCubit>()
              .setOrderData(carId: item.id.toString());
        });
      },
    );
  }

  Widget _buildAddItem() {
    return CardWithTopImage(
      imagePath: AppAssets.grey_add,
      title: 'Add New Car',
      imageHeight: Dimens.bigIconSize,
      imageWidth: Dimens.bigIconSize,
      onPress: () {},
    );
  }

  @override
  void initState() {
    super.initState();
    DIManager.findDep<GarageCubit>().getGarage();
    DIManager.findDep<OrderCubit>().setOrderData(carId: "");
  }
}
