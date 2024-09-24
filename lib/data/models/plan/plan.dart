import 'package:freezed_annotation/freezed_annotation.dart';
part 'plan.freezed.dart';
part 'plan.g.dart';

@Freezed(fromJson: true, toJson: false)
class Plan with _$Plan {
  const factory Plan({
    required int id,
    required String name,
    required double price,
    @JsonKey(name: "price_before_discount") required double priceBeforeDiscount,
    required int charges,
    required String duration,
    @JsonKey(name: "is_recommended") required bool isRecommended,
  }) = _Plan;
  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
/**{
            "charges": 90,
            "duration": "Month",
            "id": 1,
            "is_recommended": false,
            "name": "Mega Plan",
            "price": 100.99,
            "price_before_discount": 150.99
        }, */