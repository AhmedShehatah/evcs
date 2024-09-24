import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/repositories/garage/gatage_repo.dart';
import 'package:evcs/features/garage/cubit/garage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GarageCubit extends Cubit<GarageState> {
  GarageCubit(this._garageRepo) : super(GarageState.initState());

  final IGarageRepo _garageRepo;

  void getGarage() {
    emit(state.copyWith(garageState: const BaseLoadingState()));
    DIManager.findAC().showLoading();

    _garageRepo.getGarage().then((result) {
      DIManager.findAC().hideLoading();
      print("Data from API: ${result.data}");

      if (result.hasDataOnly) {
        print("Success: ${result.data}");

        emit(state.copyWith(garageState: BaseSuccessState(result.data)));
      } else {
        print("Error: ${result.data}");

        emit(state.copyWith(garageState: BaseFailState(error: result.error)));
        CustomSnackbar.showErrorSnackbar(result.error!);
      }
    });
  }
}
