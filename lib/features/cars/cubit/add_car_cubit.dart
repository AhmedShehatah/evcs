import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/models/car/add_car_request.dart';
import 'package:evcs/data/repositories/car/car_repo.dart';
import 'package:evcs/features/cars/cubit/add_car_state.dart';
import 'package:evcs/features/garage/page/garage_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCarCubit extends Cubit<AddCarState> {
  AddCarCubit(this._carRepo) : super(AddCarState.initState());
  final ICarRepo _carRepo;

  void addCar(AddCarRequest request) {
    emit(state.copyWith(addCarState: const BaseLoadingState()));
    DIManager.findAC().showLoading();
    _carRepo.addCar(request).then((result) {
      DIManager.findAC().hideLoading();
      print("test${result.toString()}");
      if (result.hasDataOnly) {
        CustomSnackbar.showSnackbar("Done Successfully");
        emit(state.copyWith(addCarState: const BaseSuccessState()));
        DIManager.findNavigator().offAll(GarageScreen.routeName);
      } else {
        print("Failed${result.error}");
        CustomSnackbar.showErrorSnackbar(result.error!);
        emit(state.copyWith(addCarState: BaseFailState(error: result.error!)));
      }
    });
  }
}
