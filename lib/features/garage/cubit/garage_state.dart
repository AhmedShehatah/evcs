import 'package:evcs/core/states/base_init_state.dart';
import 'package:evcs/core/states/base_states.dart';

class GarageState {
  BaseState garageState;
  GarageState({required this.garageState});

  factory GarageState.initState() =>
      GarageState(garageState: const BaseInitState());
  GarageState copyWith({BaseState? garageState}) {
    return GarageState(garageState: garageState ?? this.garageState);
  }
}
