import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/cards/custom_card.dart';
import 'package:evcs/core/design/text/app_custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCard extends StatelessWidget {
  PlanCard(
      {super.key,
      required this.index,
      required this.selectedPlan,
      required this.onChanged,
      required this.plan});
  final Plan plan;
  final int index;
  final int selectedPlan;
  final void Function(int) onChanged;
  final _palette = DIManager.findCC();
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;

  @override
  Widget build(BuildContext context) {
    final textColor =
        index == selectedPlan ? _palette.white : _palette.darkGreyTextColor2;
    return GestureDetector(
      onTap: () => onChanged(index),
      child: Container(
        padding: Dimens.cardInternalPadding,
        decoration: BoxDecoration(
            gradient: index == selectedPlan ? _palette.cardGradient : null,
            color:
                index != selectedPlan ? _palette.greyCardBackgroundColor : null,
            borderRadius: BorderRadius.circular(20.r)),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        height: 120.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.scale(
              scale: 1.2,
              child: Radio(
                fillColor: WidgetStateProperty.all(selectedPlan == index
                    ? _palette.white
                    : _palette.darkGreyTextColor2),
                activeColor: _palette.white,
                value: index,
                groupValue: selectedPlan,
                onChanged: (idx) {
                  onChanged(idx!);
                },
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCharges(textColor),
                  _buildPrices(textColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCharges(Color textColor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 42.h,
          child: CustomText.s36(
            bold: true,
            color: textColor,
            plan.charges.toString(),
          ),
        ),
        CustomText.s20(
          _localization.charges,
          bold: true,
          color: textColor,
        ),
        if (plan.isRecommended)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: _palette.white),
            // color: _palette.white,
            child: CustomText.s10(
              _localization.recommended,
              bold: true,
              color: _palette.primaryColor,
            ),
          )
      ],
    );
  }

  Widget _buildPrices(Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 23.h,
          child: CustomText.s16(
            plan.priceBeforeDiscount.toString(),
            bold: true,
            color: textColor.withOpacity(0.5),
            lineThrough: true,
          ),
        ),
        CustomText.s16(
          plan.price.toString(),
          color: textColor,
          bold: true,
        ),
        CustomText.s12(
          bold: true,
          plan.duration,
          color: textColor,
        ),
      ],
    );
  }
}
