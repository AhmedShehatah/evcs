// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseImpl _$$OrderResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrderResponseImpl(
      carId: (json['car_id'] as num?)?.toInt(),
      carsInQueue: (json['cars_in_queue'] as num?)?.toInt(),
      chargingTime: (json['charging_time'] as num?)?.toInt(),
      droveAt: json['drove_at'] == null
          ? null
          : DateTime.parse(json['drove_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      startChargingAt: json['start_charging_at'] as String?,
      status: json['status'] as String?,
      waitingTime: (json['waiting_time'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderResponseImplToJson(_$OrderResponseImpl instance) =>
    <String, dynamic>{
      'car_id': instance.carId,
      'cars_in_queue': instance.carsInQueue,
      'charging_time': instance.chargingTime,
      'drove_at': instance.droveAt?.toIso8601String(),
      'id': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
      'start_charging_at': instance.startChargingAt,
      'status': instance.status,
      'waiting_time': instance.waitingTime,
    };
