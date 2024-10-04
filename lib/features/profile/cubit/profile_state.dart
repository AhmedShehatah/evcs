import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class ProfileState {
  BaseState profileState;
  ProfileState({required this.profileState});

  factory ProfileState.initialState() => ProfileState(
        profileState: const BaseInitState(),
      );

  ProfileState copyWith({
    BaseState? profileState,
  }) =>
      ProfileState(profileState: profileState ?? this.profileState);
}
