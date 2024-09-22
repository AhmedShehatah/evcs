import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/car/add_car_request.dart';

class CarRemoteDataSource {
  Future<Result<void>> addCar(AddCarRequest request) async {
    return await RemoteDataSource.request(
        method: HttpMethod.POST,
        url: AppEndpoints.addCar,
        data: request.toJson());
  }
}
