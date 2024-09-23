import 'package:evcs/core/data_source/base_remote_data_source.dart';
import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/profile_model/profile_model.dart';

class ProfileRemoteDataSource {
  Future<Result<ProfileModel>> getProfile() async {
    return await RemoteDataSource.request(
        converter: (model) => ProfileModel.fromJson(model),
        method: HttpMethod.GET,
        requiresToken: true,
        url: AppEndpoints.profile);
  }
}
