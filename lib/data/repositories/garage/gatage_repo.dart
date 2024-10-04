import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/garage/garage.dart';
import 'package:evcs/data/sources/garage/garage_remote_data_source.dart';

class GarageRepo implements IGarageRepo {
  GarageRepo(this._garageRemoteDataSource);

  final GarageRemoteDataSource _garageRemoteDataSource;

  @override
  Future<Result<List<Garage>>> getGarage() async {
    return await _garageRemoteDataSource.getGarage();
  }
}

abstract class IGarageRepo {
  Future<Result<List<Garage>>> getGarage();
}
