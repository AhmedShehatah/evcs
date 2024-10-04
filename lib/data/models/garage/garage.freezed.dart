// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Garage _$GarageFromJson(Map<String, dynamic> json) {
  return _Garage.fromJson(json);
}

/// @nodoc
mixin _$Garage {
  String get brand => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'plate_number')
  String get plateNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GarageCopyWith<Garage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageCopyWith<$Res> {
  factory $GarageCopyWith(Garage value, $Res Function(Garage) then) =
      _$GarageCopyWithImpl<$Res, Garage>;
  @useResult
  $Res call(
      {String brand,
      String color,
      int id,
      String model,
      @JsonKey(name: 'plate_number') String plateNumber});
}

/// @nodoc
class _$GarageCopyWithImpl<$Res, $Val extends Garage>
    implements $GarageCopyWith<$Res> {
  _$GarageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? color = null,
    Object? id = null,
    Object? model = null,
    Object? plateNumber = null,
  }) {
    return _then(_value.copyWith(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GarageImplCopyWith<$Res> implements $GarageCopyWith<$Res> {
  factory _$$GarageImplCopyWith(
          _$GarageImpl value, $Res Function(_$GarageImpl) then) =
      __$$GarageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String brand,
      String color,
      int id,
      String model,
      @JsonKey(name: 'plate_number') String plateNumber});
}

/// @nodoc
class __$$GarageImplCopyWithImpl<$Res>
    extends _$GarageCopyWithImpl<$Res, _$GarageImpl>
    implements _$$GarageImplCopyWith<$Res> {
  __$$GarageImplCopyWithImpl(
      _$GarageImpl _value, $Res Function(_$GarageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? color = null,
    Object? id = null,
    Object? model = null,
    Object? plateNumber = null,
  }) {
    return _then(_$GarageImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$GarageImpl implements _Garage {
  _$GarageImpl(
      {required this.brand,
      required this.color,
      required this.id,
      required this.model,
      @JsonKey(name: 'plate_number') required this.plateNumber});

  factory _$GarageImpl.fromJson(Map<String, dynamic> json) =>
      _$$GarageImplFromJson(json);

  @override
  final String brand;
  @override
  final String color;
  @override
  final int id;
  @override
  final String model;
  @override
  @JsonKey(name: 'plate_number')
  final String plateNumber;

  @override
  String toString() {
    return 'Garage(brand: $brand, color: $color, id: $id, model: $model, plateNumber: $plateNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GarageImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, brand, color, id, model, plateNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GarageImplCopyWith<_$GarageImpl> get copyWith =>
      __$$GarageImplCopyWithImpl<_$GarageImpl>(this, _$identity);
}

abstract class _Garage implements Garage {
  factory _Garage(
          {required final String brand,
          required final String color,
          required final int id,
          required final String model,
          @JsonKey(name: 'plate_number') required final String plateNumber}) =
      _$GarageImpl;

  factory _Garage.fromJson(Map<String, dynamic> json) = _$GarageImpl.fromJson;

  @override
  String get brand;
  @override
  String get color;
  @override
  int get id;
  @override
  String get model;
  @override
  @JsonKey(name: 'plate_number')
  String get plateNumber;
  @override
  @JsonKey(ignore: true)
  _$$GarageImplCopyWith<_$GarageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
