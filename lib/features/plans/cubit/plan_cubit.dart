import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:evcs/core/state/base_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:evcs/data/repositories/plan/plan_repository.dart';
import 'package:evcs/features/plans/cubit/plan_state.dart';

class PlanCubit extends Cubit<PlanState> {
  PlanCubit(this._planRepository)
      : super(const PlanState(
            getPlansState: BaseState.initial(),
            subscribeState: BaseState.initial()));
  final IPlanRepository _planRepository;
  Future<void> getPlans() async {
    emit(state.copyWith(getPlansState: const BaseState.loading()));
    final result = await _planRepository.getPlans();
    if (result.hasDataOnly) {
      emit(
          state.copyWith(getPlansState: BaseState.success(data: result.data!)));
    } else {
      CustomSnackbar.showErrorSnackbar(result.error!);
      emit(state.copyWith(
          getPlansState: BaseState.failure(error: result.error!)));
    }
  }

  Future<void> subscribeToPlan(int planID) async {
    emit(state.copyWith(subscribeState: const BaseState.loading()));
    final result = await _planRepository.subscribeToPlan(planID);
    if (result.hasDataOnly) {
      CustomSnackbar.showSnackbar(result.data!.message);

      emit(state.copyWith(subscribeState: const BaseState.success(data: true)));
    } else {
      CustomSnackbar.showErrorSnackbar(result.error!);
      emit(state.copyWith(
          subscribeState: BaseState.failure(error: result.error!)));
    }
  }
}
