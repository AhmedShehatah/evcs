import 'package:evcs/core/utils/ui/bottom_sheet/custom_bottom_sheet.dart';
import 'package:evcs/features/cars/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';

class NewCarScreen extends StatefulWidget {
  static const String routeName = '/new-car-screen';

  const NewCarScreen({super.key});

  @override
  State<NewCarScreen> createState() => _NewCarScreenState();
}

class _NewCarScreenState extends State<NewCarScreen> {
  final formKey = GlobalKey<FormState>();
  final carColorController = TextEditingController();
  final carModelController = TextEditingController();
  final carPlateController = TextEditingController();
  final carProviderController = TextEditingController();
  String? selectedProvider;
  String? selectedPlate;

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalPadding(5),
                  InkWell(
                    onTap: () => CustomBottomSheet.showBottomSheet(
                      CustomDropdown(
                        title: 'Select Provider',
                        items: providers,
                        onItemSelected: (selected) {
                          setState(() {
                            selectedProvider = selected;
                          });
                        },
                      ),
                    ),
                    child: CustomFormField(
                      hasAboveTitle: false,
                      controller: carProviderController,
                      hint: selectedProvider ?? 'Select Provider',
                      disabled: true,
                      suffix: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  const VerticalPadding(2),
                  InkWell(
                    onTap: () => CustomBottomSheet.showBottomSheet(
                      CustomDropdown(
                        title: 'Select Plate',
                        items: plates,
                        onItemSelected: (selected) {
                          setState(() {
                            selectedPlate = selected;
                          });
                        },
                      ),
                    ),
                    child: CustomFormField(
                      hasAboveTitle: false,
                      controller: carPlateController,
                      hint: selectedPlate ?? 'Select Plate',
                      disabled: true,
                      suffix: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
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
                    onPress: () {},
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
