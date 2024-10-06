import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_params.freezed.dart';
part 'order_params.g.dart';

@Freezed(toJson: true, fromJson: false)
class OrderParams with _$OrderParams {
  factory OrderParams({
    String? lat,
    String? lng,
    @JsonKey(name: "car_id") String? carId,
  }) = _OrderParams;
}


/**
 * 
 *    "lat" : "26.561212688431578",
   "lng" : "31.719585360212353",
   "car_id" : "1"
 */