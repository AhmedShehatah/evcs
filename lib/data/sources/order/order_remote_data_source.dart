import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/order/order_params.dart';
import 'package:evcs/data/models/order/order_response.dart';

class OrderRemoteDataSource {
  Future<Result<OrderResponse>> addOrder(OrderParams order) async {
    return await RemoteDataSource.request(
        method: HttpMethod.POST,
        data: order.toJson(),
        url: AppEndpoints.order,
        requiresToken: true,
        converter: (model) => OrderResponse.fromJson(model["data"]));
  }
}
