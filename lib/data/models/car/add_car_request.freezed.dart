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
  String get brand => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get plate_number => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

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
  $Res call({String brand, String model, String plate_number, String color});
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
    Object? brand = null,
    Object? model = null,
    Object? plate_number = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plate_number: null == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String brand, String model, String plate_number, String color});
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
    Object? brand = null,
    Object? model = null,
    Object? plate_number = null,
    Object? color = null,
  }) {
    return _then(_$AddCarRequestImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plate_number: null == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$AddCarRequestImpl implements _AddCarRequest {
  const _$AddCarRequestImpl(
      {required this.brand,
      required this.model,
      required this.plate_number,
      required this.color});

  @override
  final String brand;
  @override
  final String model;
  @override
  final String plate_number;
  @override
  final String color;

  @override
  String toString() {
    return 'AddCarRequest(brand: $brand, model: $model, plate_number: $plate_number, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarRequestImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plate_number, plate_number) ||
                other.plate_number == plate_number) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, brand, model, plate_number, color);

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
      {required final String brand,
      required final String model,
      required final String plate_number,
      required final String color}) = _$AddCarRequestImpl;

  @override
  String get brand;
  @override
  String get model;
  @override
  String get plate_number;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$AddCarRequestImplCopyWith<_$AddCarRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
