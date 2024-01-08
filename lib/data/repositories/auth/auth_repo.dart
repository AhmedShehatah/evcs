import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/auth/auth_response.dart';
import 'package:evcs/data/models/auth/sign_in_request.dart';
import 'package:evcs/data/models/auth/sign_up_request.dart';
import 'package:evcs/data/sources/auth/auth_remote_data_source.dart';

class AuthRepo implements IAuthRepo {
  final AuthRemoteDataSource _authRemote;

  const AuthRepo(this._authRemote);

  @override
  Future<Result<AuthResponse>> signUp(SignUpRequest request) async {
    return await _authRemote.signUp(request);
  }

  @override
  Future<Result<AuthResponse>> signIn(SignInRequest request) async {
    return await _authRemote.signIn(request);
  }
}

abstract class IAuthRepo {
  Future<Result<AuthResponse>> signUp(SignUpRequest request);
  Future<Result<AuthResponse>> signIn(SignInRequest request);
}
