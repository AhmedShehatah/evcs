import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:logger/logger.dart';

class PlanRemoteDataSource {
  Future<Result<List<Plan>>> getPlans() async {
    return await RemoteDataSource.request(
        method: HttpMethod.GET,
        url: AppEndpoints.plans,
        requiresToken: true,
        converterList: (list) {
          Logger().e("Inside The converter");
          return list!.map((item) {
            Logger().e(item);
            return Plan.fromJson(item);
          }).toList();
        });
  }
}
