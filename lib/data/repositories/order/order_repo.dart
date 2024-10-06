import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/order/order_params.dart';
import 'package:evcs/data/models/order/order_response.dart';
import 'package:evcs/data/sources/order/order_remote_data_source.dart';

class OrderRepo implements IOrderRepo {
  OrderRepo(this.orderRD);
  final OrderRemoteDataSource orderRD;
  @override
  Future<Result<OrderResponse>> addOrder(OrderParams order) async {
    return await orderRD.addOrder(order);
  }
}

abstract class IOrderRepo {
  Future<Result<OrderResponse>> addOrder(OrderParams order);
}
