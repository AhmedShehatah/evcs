import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/garage/garage.dart';
import 'package:logger/logger.dart';

class GarageRemoteDataSource {
  Future<Result<List<Garage>>> getGarage() async {
    return await RemoteDataSource.request(
      method: HttpMethod.GET,
      url: AppEndpoints.addCar,
      requiresToken: true,
      converterList: (list) {
        return list!.map((item) {
          return Garage.fromJson(item);
        }).toList();
      },
    );
  }
}
