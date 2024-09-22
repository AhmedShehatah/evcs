import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class ApplicationState {
  BaseState? loadingState;
  bool isVisible;
  String screenName;

  ApplicationState({
    this.loadingState,
    this.isVisible = false,
    this.screenName = '/',
  });
  factory ApplicationState.initialState() => ApplicationState(
        loadingState: const BaseInitState(),
        isVisible: false,
        screenName: '/',
      );

  ApplicationState copyWith({
    BaseState? loadingState,
    bool? isVisible,
    String? screenName,
  }) {
    return ApplicationState(
      loadingState: loadingState ?? this.loadingState,
      isVisible: isVisible ?? this.isVisible,
      screenName: screenName ?? this.screenName,
    );
  }
}
