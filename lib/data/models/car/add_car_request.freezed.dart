// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_car_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCarRequest {
  String? get brand => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'plate_number')
  String? get plateNumber => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCarRequestCopyWith<AddCarRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCarRequestCopyWith<$Res> {
  factory $AddCarRequestCopyWith(
          AddCarRequest value, $Res Function(AddCarRequest) then) =
      _$AddCarRequestCopyWithImpl<$Res, AddCarRequest>;
  @useResult
  $Res call(
      {String? brand,
      String? model,
      @JsonKey(name: 'plate_number') String? plateNumber,
      String? color});
}

/// @nodoc
class _$AddCarRequestCopyWithImpl<$Res, $Val extends AddCarRequest>
    implements $AddCarRequestCopyWith<$Res> {
  _$AddCarRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? model = freezed,
    Object? plateNumber = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCarRequestImplCopyWith<$Res>
    implements $AddCarRequestCopyWith<$Res> {
  factory _$$AddCarRequestImplCopyWith(
          _$AddCarRequestImpl value, $Res Function(_$AddCarRequestImpl) then) =
      __$$AddCarRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
      String? model,
      @JsonKey(name: 'plate_number') String? plateNumber,
      String? color});
}

/// @nodoc
class __$$AddCarRequestImplCopyWithImpl<$Res>
    extends _$AddCarRequestCopyWithImpl<$Res, _$AddCarRequestImpl>
    implements _$$AddCarRequestImplCopyWith<$Res> {
  __$$AddCarRequestImplCopyWithImpl(
      _$AddCarRequestImpl _value, $Res Function(_$AddCarRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? model = freezed,
    Object? plateNumber = freezed,
    Object? color = freezed,
  }) {
    return _then(_$AddCarRequestImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$AddCarRequestImpl implements _AddCarRequest {
  const _$AddCarRequestImpl(
      {required this.brand,
      required this.model,
      @JsonKey(name: 'plate_number') required this.plateNumber,
      required this.color});

  @override
  final String? brand;
  @override
  final String? model;
  @override
  @JsonKey(name: 'plate_number')
  final String? plateNumber;
  @override
  final String? color;

  @override
  String toString() {
    return 'AddCarRequest(brand: $brand, model: $model, plateNumber: $plateNumber, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarRequestImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, brand, model, plateNumber, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCarRequestImplCopyWith<_$AddCarRequestImpl> get copyWith =>
      __$$AddCarRequestImplCopyWithImpl<_$AddCarRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCarRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCarRequest implements AddCarRequest {
  const factory _AddCarRequest(
      {required final String? brand,
      required final String? model,
      @JsonKey(name: 'plate_number') required final String? plateNumber,
      required final String? color}) = _$AddCarRequestImpl;

  @override
  String? get brand;
  @override
  String? get model;
  @override
  @JsonKey(name: 'plate_number')
  String? get plateNumber;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$AddCarRequestImplCopyWith<_$AddCarRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
