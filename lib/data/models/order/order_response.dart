import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const OrderResponse._();
  factory OrderResponse({
    @JsonKey(name: "car_id") required int? carId,
    @JsonKey(name: "cars_in_queue") required int? carsInQueue,
    @JsonKey(name: "charging_time") required int? chargingTime,
    @JsonKey(name: "drove_at") required DateTime? droveAt,
    required int? id,
    required String? lat,
    required String? lng,
    @JsonKey(name: "start_charging_at") required String? startChargingAt,
    required String? status,
    @JsonKey(name: "waiting_time") required int? waitingTime,
  }) = _OrderResponse;
  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

/*
      "car_id": 1,
        "cars_in_queue": 0,
        "charging_time": 30,
        "drove_at": null,
        "id": 1,
        "lat": "26.561212688431578",
        "lng": "31.719585360212353",
        "start_charging_at": null,
        "status": "Pending",
        "waiting_time": 30


*/