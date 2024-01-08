import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class AuthState {
  BaseState signUpState;
  BaseState signInState;

  AuthState({
    required this.signUpState,
    required this.signInState,
  });

  factory AuthState.initState() => AuthState(
        signUpState: const BaseInitState(),
        signInState: const BaseInitState(),
      );

  AuthState copyWith({
    BaseState? signUpState,
    BaseState? signInState,
  }) =>
      AuthState(
          signUpState: signUpState ?? this.signUpState,
          signInState: signInState ?? this.signInState);
}
