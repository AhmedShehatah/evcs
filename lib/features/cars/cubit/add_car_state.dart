import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class AddCarState {
  BaseState addCarState;
  AddCarState({required this.addCarState});

  factory AddCarState.initState() =>
      AddCarState(addCarState: const BaseInitState());
  AddCarState copyWith({BaseState? addCarState}) {
    return AddCarState(addCarState: addCarState ?? this.addCarState);
  }
}
