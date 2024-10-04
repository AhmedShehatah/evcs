import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/profile_model/profile_model.dart';
import 'package:evcs/data/sources/profile/profile_remote_data_source.dart';

class ProfileRepo implements IProfileRepo {
  final ProfileRemoteDataSource _profileRemote;

  const ProfileRepo(this._profileRemote);
  @override
  Future<Result<ProfileModel>> getProfile() async {
    return await _profileRemote.getProfile();
  }
}

abstract class IProfileRepo {
  Future<Result<ProfileModel>> getProfile();
}
