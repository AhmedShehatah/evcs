import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:evcs/core/state/base_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:evcs/data/repositories/plan/plan_repository.dart';

class PlanCubit extends Cubit<BaseState<List<Plan>>> {
  PlanCubit(this._planRepository) : super(const BaseState.initial());
  final IPlanRepository _planRepository;
  Future<void> getPlans() async {
    emit(const BaseState.loading());
    final result = await _planRepository.getPlans();
    if (result.hasDataOnly) {
      emit(BaseState.success(data: result.data!));
    } else {
      CustomSnackbar.showErrorSnackbar(result.error!);
      emit(BaseState.failure(error: result.error!));
    }
  }
}
