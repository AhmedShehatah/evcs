import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class HomeState {
  BaseState? cuurentLocationState;

  HomeState({
    this.cuurentLocationState,
  });
  factory HomeState.initState() => HomeState(
        cuurentLocationState: const BaseInitState(),
      );
  HomeState copyWith({
    BaseState? cuurentLocationState,
  }) {
    return HomeState(
      cuurentLocationState: cuurentLocationState ?? this.cuurentLocationState,
    );
  }
}
