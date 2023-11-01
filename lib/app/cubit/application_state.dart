import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class ApplicationState {
  BaseState? loadingState;
  ApplicationState({
    this.loadingState,
  });
  factory ApplicationState.initialState() => ApplicationState(
        loadingState: const BaseInitState(),
      );

  ApplicationState copyWith({
    BaseState? loadingState,
  }) {
    return ApplicationState(
      loadingState: loadingState ?? this.loadingState,
    );
  }
}
