// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  @JsonKey(name: "car_id")
  int? get carId => throw _privateConstructorUsedError;
  @JsonKey(name: "cars_in_queue")
  int? get carsInQueue => throw _privateConstructorUsedError;
  @JsonKey(name: "charging_time")
  int? get chargingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "drove_at")
  DateTime? get droveAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "start_charging_at")
  String? get startChargingAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "waiting_time")
  int? get waitingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "car_id") int? carId,
      @JsonKey(name: "cars_in_queue") int? carsInQueue,
      @JsonKey(name: "charging_time") int? chargingTime,
      @JsonKey(name: "drove_at") DateTime? droveAt,
      int? id,
      String? lat,
      String? lng,
      @JsonKey(name: "start_charging_at") String? startChargingAt,
      String? status,
      @JsonKey(name: "waiting_time") int? waitingTime});
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? carsInQueue = freezed,
    Object? chargingTime = freezed,
    Object? droveAt = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? startChargingAt = freezed,
    Object? status = freezed,
    Object? waitingTime = freezed,
  }) {
    return _then(_value.copyWith(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carsInQueue: freezed == carsInQueue
          ? _value.carsInQueue
          : carsInQueue // ignore: cast_nullable_to_non_nullable
              as int?,
      chargingTime: freezed == chargingTime
          ? _value.chargingTime
          : chargingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      droveAt: freezed == droveAt
          ? _value.droveAt
          : droveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      startChargingAt: freezed == startChargingAt
          ? _value.startChargingAt
          : startChargingAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "car_id") int? carId,
      @JsonKey(name: "cars_in_queue") int? carsInQueue,
      @JsonKey(name: "charging_time") int? chargingTime,
      @JsonKey(name: "drove_at") DateTime? droveAt,
      int? id,
      String? lat,
      String? lng,
      @JsonKey(name: "start_charging_at") String? startChargingAt,
      String? status,
      @JsonKey(name: "waiting_time") int? waitingTime});
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? carsInQueue = freezed,
    Object? chargingTime = freezed,
    Object? droveAt = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? startChargingAt = freezed,
    Object? status = freezed,
    Object? waitingTime = freezed,
  }) {
    return _then(_$OrderResponseImpl(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carsInQueue: freezed == carsInQueue
          ? _value.carsInQueue
          : carsInQueue // ignore: cast_nullable_to_non_nullable
              as int?,
      chargingTime: freezed == chargingTime
          ? _value.chargingTime
          : chargingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      droveAt: freezed == droveAt
          ? _value.droveAt
          : droveAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      startChargingAt: freezed == startChargingAt
          ? _value.startChargingAt
          : startChargingAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseImpl extends _OrderResponse {
  _$OrderResponseImpl(
      {@JsonKey(name: "car_id") required this.carId,
      @JsonKey(name: "cars_in_queue") required this.carsInQueue,
      @JsonKey(name: "charging_time") required this.chargingTime,
      @JsonKey(name: "drove_at") required this.droveAt,
      required this.id,
      required this.lat,
      required this.lng,
      @JsonKey(name: "start_charging_at") required this.startChargingAt,
      required this.status,
      @JsonKey(name: "waiting_time") required this.waitingTime})
      : super._();

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  @JsonKey(name: "car_id")
  final int? carId;
  @override
  @JsonKey(name: "cars_in_queue")
  final int? carsInQueue;
  @override
  @JsonKey(name: "charging_time")
  final int? chargingTime;
  @override
  @JsonKey(name: "drove_at")
  final DateTime? droveAt;
  @override
  final int? id;
  @override
  final String? lat;
  @override
  final String? lng;
  @override
  @JsonKey(name: "start_charging_at")
  final String? startChargingAt;
  @override
  final String? status;
  @override
  @JsonKey(name: "waiting_time")
  final int? waitingTime;

  @override
  String toString() {
    return 'OrderResponse(carId: $carId, carsInQueue: $carsInQueue, chargingTime: $chargingTime, droveAt: $droveAt, id: $id, lat: $lat, lng: $lng, startChargingAt: $startChargingAt, status: $status, waitingTime: $waitingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.carsInQueue, carsInQueue) ||
                other.carsInQueue == carsInQueue) &&
            (identical(other.chargingTime, chargingTime) ||
                other.chargingTime == chargingTime) &&
            (identical(other.droveAt, droveAt) || other.droveAt == droveAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.startChargingAt, startChargingAt) ||
                other.startChargingAt == startChargingAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, carId, carsInQueue, chargingTime,
      droveAt, id, lat, lng, startChargingAt, status, waitingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse extends OrderResponse {
  factory _OrderResponse(
          {@JsonKey(name: "car_id") required final int? carId,
          @JsonKey(name: "cars_in_queue") required final int? carsInQueue,
          @JsonKey(name: "charging_time") required final int? chargingTime,
          @JsonKey(name: "drove_at") required final DateTime? droveAt,
          required final int? id,
          required final String? lat,
          required final String? lng,
          @JsonKey(name: "start_charging_at")
          required final String? startChargingAt,
          required final String? status,
          @JsonKey(name: "waiting_time") required final int? waitingTime}) =
      _$OrderResponseImpl;
  _OrderResponse._() : super._();

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  @JsonKey(name: "car_id")
  int? get carId;
  @override
  @JsonKey(name: "cars_in_queue")
  int? get carsInQueue;
  @override
  @JsonKey(name: "charging_time")
  int? get chargingTime;
  @override
  @JsonKey(name: "drove_at")
  DateTime? get droveAt;
  @override
  int? get id;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(name: "start_charging_at")
  String? get startChargingAt;
  @override
  String? get status;
  @override
  @JsonKey(name: "waiting_time")
  int? get waitingTime;
  @override
  @JsonKey(ignore: true)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
