// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      priceBeforeDiscount: (json['price_before_discount'] as num).toDouble(),
      charges: (json['charges'] as num).toInt(),
      duration: json['duration'] as String,
      isRecommended: json['is_recommended'] as bool,
    );
