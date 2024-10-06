import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/location/location.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/features/home/cubit/home_state.dart';
import 'package:evcs/features/order/cubit/order_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initState());

  Marker marker = const Marker(markerId: MarkerId('marker'));
  late LatLng currentLocation;
  void getCurrentLocation() {
    DIManager.findAC().showLoading();
    emit(state.copyWith(cuurentLocationState: const BaseLoadingState()));
    AppLocation().determinePosition().then((location) {
      currentLocation = location;
      marker = Marker(markerId: const MarkerId('marker'), position: location);
      Logger().e(currentLocation);
      DIManager.findAC().hideLoading();
      emit(state.copyWith(cuurentLocationState: const BaseSuccessState()));
    }).onError((error, stackTrace) {
      emit(state.copyWith(cuurentLocationState: const BaseFailState()));
      DIManager.findAC().hideLoading();
      CustomSnackbar.showSnackbar(error.toString());
    });
  }

  void onDone() {
    DIManager.findDep<OrderCubit>().setOrderData(
      lat: marker.position.latitude.toString(),
      lng: marker.position.longitude.toString(),
    );
  }
}
