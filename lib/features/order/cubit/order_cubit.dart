import 'package:bloc/bloc.dart';
import 'package:evcs/core/state/base_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/models/order/order_params.dart';
import 'package:evcs/data/models/order/order_response.dart';
import 'package:evcs/data/repositories/order/order_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._repo)
      : super(OrderState(addOrder: const BaseState.initial()));
  final IOrderRepo _repo;
  Future<void> addOrder() async {
    emit(state.copyWith(addOrder: const BaseState.loading()));

    await _repo.addOrder(order).then((result) {
      if (result.hasDataOnly) {
        emit(state.copyWith(addOrder: BaseState.success(data: result.data!)));
        CustomSnackbar.showSnackbar("Done Successfully");
        Logger().e(result.data.toString());
      } else {
        emit(state.copyWith(addOrder: BaseState.failure(error: result.error!)));
        CustomSnackbar.showErrorSnackbar(result.error!);
      }
    });
  }

  OrderParams order = OrderParams();

  void setOrderData({String? lat, String? lng, String? carId}) {
    order = order.copyWith(
        carId: carId ?? order.carId,
        lat: lat ?? order.lat,
        lng: lng ?? order.lng);
    Logger().e("Order Lat ${order.lat}  Order Lng ${order.lng}");
  }
}
