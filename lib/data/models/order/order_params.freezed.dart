// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderParams {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: "car_id")
  String? get carId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderParamsCopyWith<OrderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderParamsCopyWith<$Res> {
  factory $OrderParamsCopyWith(
          OrderParams value, $Res Function(OrderParams) then) =
      _$OrderParamsCopyWithImpl<$Res, OrderParams>;
  @useResult
  $Res call({String? lat, String? lng, @JsonKey(name: "car_id") String? carId});
}

/// @nodoc
class _$OrderParamsCopyWithImpl<$Res, $Val extends OrderParams>
    implements $OrderParamsCopyWith<$Res> {
  _$OrderParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? carId = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderParamsImplCopyWith<$Res>
    implements $OrderParamsCopyWith<$Res> {
  factory _$$OrderParamsImplCopyWith(
          _$OrderParamsImpl value, $Res Function(_$OrderParamsImpl) then) =
      __$$OrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lat, String? lng, @JsonKey(name: "car_id") String? carId});
}

/// @nodoc
class __$$OrderParamsImplCopyWithImpl<$Res>
    extends _$OrderParamsCopyWithImpl<$Res, _$OrderParamsImpl>
    implements _$$OrderParamsImplCopyWith<$Res> {
  __$$OrderParamsImplCopyWithImpl(
      _$OrderParamsImpl _value, $Res Function(_$OrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? carId = freezed,
  }) {
    return _then(_$OrderParamsImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$OrderParamsImpl implements _OrderParams {
  _$OrderParamsImpl({this.lat, this.lng, @JsonKey(name: "car_id") this.carId});

  @override
  final String? lat;
  @override
  final String? lng;
  @override
  @JsonKey(name: "car_id")
  final String? carId;

  @override
  String toString() {
    return 'OrderParams(lat: $lat, lng: $lng, carId: $carId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderParamsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, carId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderParamsImplCopyWith<_$OrderParamsImpl> get copyWith =>
      __$$OrderParamsImplCopyWithImpl<_$OrderParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderParamsImplToJson(
      this,
    );
  }
}

abstract class _OrderParams implements OrderParams {
  factory _OrderParams(
      {final String? lat,
      final String? lng,
      @JsonKey(name: "car_id") final String? carId}) = _$OrderParamsImpl;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(name: "car_id")
  String? get carId;
  @override
  @JsonKey(ignore: true)
  _$$OrderParamsImplCopyWith<_$OrderParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
