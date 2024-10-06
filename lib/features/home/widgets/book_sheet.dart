import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/loading_widgets/custom_loading.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/features/home/widgets/credit_card_widget.dart';
import 'package:evcs/features/home/widgets/my_cars_list.dart';
import 'package:evcs/features/home/widgets/price_widget.dart';
import 'package:evcs/features/order/cubit/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSheet extends StatelessWidget {
  const BookSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.bottomSheetInternalPadding,
      child: BlocBuilder<OrderCubit, OrderState>(
        bloc: DIManager.findDep<OrderCubit>(),
        builder: (context, state) {
          final orderState = state.addOrder;
          return orderState!.maybeMap(
            loading: (_) => Container(height: 200.h, child: CustomLoading()),
            orElse: () {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text3Title(
                    translate('My Cars'),
                  ),
                  const MyCarsListWidget(),
                  const VerticalPadding(2),
                  Text3Title(translate("Price")),
                  const VerticalPadding(1),
                  const PriceWidget(),
                  const VerticalPadding(2),
                  Text3Title(translate("Credit Card")),
                  const VerticalPadding(1),
                  const CreditCardHomeWidget(),
                  const VerticalPadding(3),
                  AppDefaultButton(
                    onPress: () {
                      if (DIManager.findDep<OrderCubit>().order.carId == null ||
                          DIManager.findDep<OrderCubit>().order.carId! == "") {
                        CustomSnackbar.showSnackbar("Please select a car");
                      } else {
                        DIManager.findDep<OrderCubit>().addOrder();
                      }
                    },
                    title: 'Charge Now',
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
