import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/features/home/widgets/credit_card_widget.dart';
import 'package:evcs/features/home/widgets/my_cars_list.dart';
import 'package:evcs/features/home/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class BookSheet extends StatelessWidget {
  const BookSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.bottomSheetInternalPadding,
      child: Column(
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
          const VerticalPadding(2),
          AppDefaultButton(
            onPress: () {},
            title: 'Charge Now',
          )
        ],
      ),
    );
  }
}
