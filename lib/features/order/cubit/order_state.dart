part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState._();

  factory OrderState({BaseState<OrderResponse>? addOrder}) = _OrderState;
}
