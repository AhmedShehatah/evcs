import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/car/add_car_request.dart';
import 'package:evcs/data/models/car/add_car_response.dart';

class CarRemoteDataSource {
  Future<Result<AddCarResponse>> addCar(AddCarRequest request) async {
    return await RemoteDataSource.request(
        converter: (model) => AddCarResponse.fromJson(model),
        method: HttpMethod.POST,
        url: AppEndpoints.addCar,
        requiresToken: true,
        data: request.toJson());
  }
}
