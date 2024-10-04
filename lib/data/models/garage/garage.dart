import 'package:freezed_annotation/freezed_annotation.dart';
part 'garage.freezed.dart';
part 'garage.g.dart';

@Freezed(fromJson: true, toJson: false)
class Garage with _$Garage {
  factory Garage({
    required String brand,
    required String color,
    required int id,
    required String model,
    @JsonKey(name: 'plate_number') required String plateNumber,
  }) = _Garage;
  factory Garage.fromJson(Map<String, dynamic> json) => _$GarageFromJson(json);
}



/** 
 * {
    "data": [
        {
            "brand": "kia",
            "color": "red",
            "id": 1,
            "model": "sportage",
            "plate_number": "0122345"
        },
        {
            "brand": "kia",
            "color": "reed",
            "id": 2,
            "model": "sportage",
            "plate_number": "01223345"
        },
        {
            "brand": "kia",
            "color": "red",
            "id": 3,
            "model": "sportage",
            "plate_number": "0122335"
        },
        {
            "brand": "kia",
            "color": "red",
            "id": 32,
            "model": "sportage",
            "plate_number": "012345"
        },
        {
            "brand": "kia",
            "color": "red",
            "id": 33,
            "model": "sportage",
            "plate_number": "01235"
        }
    ]
}
 */