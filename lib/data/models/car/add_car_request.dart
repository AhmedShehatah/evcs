import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_car_request.freezed.dart';
part 'add_car_request.g.dart';

@Freezed(toJson: true, fromJson: false)
class AddCarRequest with _$AddCarRequest {
  const factory AddCarRequest({
    required String brand,
    required String model,
    required String plateNumber,
    required String color,
  }) = _AddCarRequest;
}
