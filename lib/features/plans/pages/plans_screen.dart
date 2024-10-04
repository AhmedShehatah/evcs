import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/buttons/app_default_floating_button.dart';
import 'package:evcs/core/design/cards/custom_card.dart';
import 'package:evcs/core/design/loading_widgets/custom_loading.dart';
import 'package:evcs/core/design/text/app_custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/core/state/base_state.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:evcs/features/plans/cubit/plan_cubit.dart';
import 'package:evcs/features/plans/cubit/plan_state.dart';
import 'package:evcs/features/plans/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlansScreen extends StatefulWidget {
  PlansScreen({super.key});
  static const String routeName = 'Plans';

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;
  @override
  void initState() {
    super.initState();
    DIManager.findDep<PlanCubit>().getPlans();
  }

  ValueNotifier selectedPlan = ValueNotifier(0);

  void selectPlan(int plan) {
    selectedPlan.value = plan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dimens.defaultPageHorizontalPadding,
        child: BlocBuilder<PlanCubit, PlanState>(
          bloc: DIManager.findDep<PlanCubit>(),
          builder: (context, state) {
            var plans = state.getPlansState;
            var subscribe = state.subscribeState;
            return plans!.maybeWhen(
              success: (plans) {
                return Column(
                  children: [
                    CustomText.s24(
                      _localization.choosePlan,
                      bold: true,
                    ),
                    CustomText.s13(
                      _localization.upgradeOrDowngrade,
                      color: DIManager.findCC().greyTextColor2,
                    ),
                    SizedBox(
                      height: 510.h,
                      child: ValueListenableBuilder(
                        valueListenable: selectedPlan,
                        builder: (_, __, ___) => ListView.builder(
                            shrinkWrap: true,
                            itemCount: plans.length,
                            itemBuilder: (_, idx) {
                              return PlanCard(
                                  plan: plans[idx],
                                  index: idx,
                                  selectedPlan: selectedPlan.value,
                                  onChanged: selectPlan);
                            }),
                      ),
                    ),
                    CustomText.s13(center: true, _localization.terms),
                    5.verticalSpace,
                    AppDefaultButton(
                        isLoading: subscribe!.maybeMap(
                            loading: (_) => true, orElse: () => false),
                        onPress: () {
                          DIManager.findDep<PlanCubit>()
                              .subscribeToPlan(plans[selectedPlan.value].id);
                        },
                        title: _localization.purchase)
                  ],
                );
              },
              loading: () {
                return const CustomLoading(
                  isTrasparent: true,
                );
              },
              failure: (_) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText.s13(
                        bold: true,
                        _localization.error,
                        center: true,
                      ),
                      IconButton(
                          onPressed: () {
                            DIManager.findDep<PlanCubit>().getPlans();
                          },
                          icon: const Icon(Icons.refresh_rounded))
                    ],
                  ),
                );
              },
              orElse: () => Container(
                color: DIManager.findCC().black,
              ),
            );
          },
        ),
      ),
    );
  }
}
