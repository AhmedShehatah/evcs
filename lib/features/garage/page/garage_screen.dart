import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_floating_button.dart';
import 'package:evcs/features/garage/widgets/garage_list_item.dart';
import 'package:flutter/material.dart';

class GarageScreen extends StatelessWidget {
  static const String routeName = "/garage-screen";
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AppDefaultFloatingButton(onPress: () {}),
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
