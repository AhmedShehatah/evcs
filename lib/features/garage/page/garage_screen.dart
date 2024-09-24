import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_floating_button.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/features/cars/pages/add_car_screen.dart';
import 'package:evcs/features/garage/widgets/garage_list_item.dart';
import 'package:flutter/material.dart';

class GarageScreen extends StatelessWidget {
  static const String routeName = "My Garage";
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AppDefaultFloatingButton(onPress: () {
        DIManager.findNavigator().offAll(AddCarScreen.routeName);
      }),
      body: Padding(
        padding: Dimens.defaultPageHorizontalPaddingSmall,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (ctx, idx) {
            return const GarageListItem();
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
