import 'package:evcs/core/network/http_method.dart';
import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/endpoints/app_endpoints.dart';
import 'package:evcs/data/models/auth/auth_response.dart';
import 'package:evcs/data/models/auth/sign_in_request/sign_in_request.dart';
import 'package:evcs/data/models/auth/sign_up_request/sign_up_request.dart';

import '../../../core/data_source/base_remote_data_source.dart';

class AuthRemoteDataSource {
  Future<Result<AuthResponse>> signUp(SignUpRequest request) async {
    return await RemoteDataSource.request(
        converter: (model) => AuthResponse.fromJson(model),
        method: HttpMethod.POST,
        url: AppEndpoints.signUp,
        data: request.toJson());
  }

  Future<Result<AuthResponse>> signIn(SignInRequest request) async {
    return await RemoteDataSource.request(
        converter: (model) => AuthResponse.fromJson(model),
        method: HttpMethod.POST,
        url: AppEndpoints.signIn,
        data: request.toJson());
  }
}
