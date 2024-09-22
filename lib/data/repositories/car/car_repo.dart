import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/car/add_car_request.dart';
import 'package:evcs/data/models/car/add_car_response.dart';
import 'package:evcs/data/sources/car/car_remote_data_source.dart';

class CarRepo implements ICarRepo {
  final CarRemoteDataSource _carRemoteDataSource;
  CarRepo(this._carRemoteDataSource);
  @override
  Future<Result<AddCarResponse>> addCar(AddCarRequest request) async {
    return await _carRemoteDataSource.addCar(request);
  }
}

abstract class ICarRepo {
  Future<Result<AddCarResponse>> addCar(AddCarRequest request);
}
