import 'package:evcs/core/state/base_state.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plan_state.freezed.dart';

@freezed
class PlanState with _$PlanState {
  const PlanState._();

  const factory PlanState(
      {BaseState<List<Plan>>? getPlansState,
      BaseState<bool>? subscribeState}) = _PlanState;
}
