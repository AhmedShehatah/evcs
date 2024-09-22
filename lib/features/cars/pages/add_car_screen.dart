import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/core/utils/ui/bottom_sheet/custom_bottom_sheet.dart';
import 'package:evcs/data/models/car/add_car_request.dart';
import 'package:evcs/features/cars/cubit/add_car_cubit.dart';
import 'package:evcs/features/cars/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';

class AddCarScreen extends StatefulWidget {
  static const String routeName = '/add-car-screen';

  const AddCarScreen({super.key});

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final formKey = GlobalKey<FormState>();
  final carColorController = TextEditingController();
  final carModelController = TextEditingController();
  final carPlateController = TextEditingController();
  final carProviderController = TextEditingController();
  String? selectedProvider;
  String? selectedPlate;
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;

  final List<String> providers = [];
  final List<String> plates = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: Dimens.defaultPageHorizontalPadding,
            child: Form(
              key: formKey,
              autovalidateMode: _autoValidateMode,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalPadding(5),
                  // InkWell(
                  //   onTap: () => CustomBottomSheet.showBottomSheet(
                  //     CustomDropdown(
                  //       title: 'Select Provider',
                  //       items: providers,
                  //       onItemSelected: (selected) {
                  //         setState(() {
                  //           selectedProvider = selected;
                  //           carProviderController.text = selected;
                  //         });
                  //       },
                  //     ),
                  //   ),
                  //   child:
                  CustomFormField(
                    hasAboveTitle: false,
                    controller: carProviderController,
                    hint: selectedProvider ?? 'Select Provider',
                    // disabled: true,
                    suffix: const Icon(Icons.keyboard_arrow_down),
                  ),
                  // ),
                  const VerticalPadding(2),
                  // InkWell(
                  //   onTap: () => CustomBottomSheet.showBottomSheet(
                  //     CustomDropdown(
                  //       title: 'Select Plate',
                  //       items: plates,
                  //       onItemSelected: (selected) {
                  //         setState(() {
                  //           selectedPlate = selected;
                  //           carPlateController.text = selected;
                  //         });
                  //       },
                  //     ),
                  //   ),
                  //   child:
                  CustomFormField(
                    hasAboveTitle: false,
                    controller: carPlateController,
                    hint: selectedPlate ?? 'Select Plate',
                    // disabled: true,
                    suffix: const Icon(Icons.keyboard_arrow_down),
                  ),
                  // ),
                  const VerticalPadding(1),
                  CustomFormField(
                    hasAboveTitle: false,
                    controller: carColorController,
                    hint: 'Please Enter color car',
                  ),
                  const VerticalPadding(1),
                  CustomFormField(
                    hasAboveTitle: false,
                    controller: carModelController,
                    hint: 'Please Enter model car',
                  ),
                  const VerticalPadding(8),
                  AppDefaultButton(
                    onPress: () {
                      setState(() {
                        _autoValidateMode = AutovalidateMode.onUserInteraction;
                      });
                      if (formKey.currentState?.validate() ?? false) {
                        DIManager.findDep<AddCarCubit>().addCar(AddCarRequest(
                          brand: carProviderController.text,
                          model: carModelController.text,
                          plate_number: carPlateController.text,
                          color: carColorController.text,
                        ));
                      }
                    },
                    title: 'Save',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
