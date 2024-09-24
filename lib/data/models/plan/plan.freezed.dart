// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price_before_discount")
  double get priceBeforeDiscount => throw _privateConstructorUsedError;
  int get charges => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "is_recommended")
  bool get isRecommended => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      @JsonKey(name: "price_before_discount") double priceBeforeDiscount,
      int charges,
      String duration,
      @JsonKey(name: "is_recommended") bool isRecommended});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? priceBeforeDiscount = null,
    Object? charges = null,
    Object? duration = null,
    Object? isRecommended = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceBeforeDiscount: null == priceBeforeDiscount
          ? _value.priceBeforeDiscount
          : priceBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      charges: null == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      @JsonKey(name: "price_before_discount") double priceBeforeDiscount,
      int charges,
      String duration,
      @JsonKey(name: "is_recommended") bool isRecommended});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? priceBeforeDiscount = null,
    Object? charges = null,
    Object? duration = null,
    Object? isRecommended = null,
  }) {
    return _then(_$PlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceBeforeDiscount: null == priceBeforeDiscount
          ? _value.priceBeforeDiscount
          : priceBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      charges: null == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: "price_before_discount") required this.priceBeforeDiscount,
      required this.charges,
      required this.duration,
      @JsonKey(name: "is_recommended") required this.isRecommended});

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  @JsonKey(name: "price_before_discount")
  final double priceBeforeDiscount;
  @override
  final int charges;
  @override
  final String duration;
  @override
  @JsonKey(name: "is_recommended")
  final bool isRecommended;

  @override
  String toString() {
    return 'Plan(id: $id, name: $name, price: $price, priceBeforeDiscount: $priceBeforeDiscount, charges: $charges, duration: $duration, isRecommended: $isRecommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceBeforeDiscount, priceBeforeDiscount) ||
                other.priceBeforeDiscount == priceBeforeDiscount) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price,
      priceBeforeDiscount, charges, duration, isRecommended);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);
}

abstract class _Plan implements Plan {
  const factory _Plan(
          {required final int id,
          required final String name,
          required final double price,
          @JsonKey(name: "price_before_discount")
          required final double priceBeforeDiscount,
          required final int charges,
          required final String duration,
          @JsonKey(name: "is_recommended") required final bool isRecommended}) =
      _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(name: "price_before_discount")
  double get priceBeforeDiscount;
  @override
  int get charges;
  @override
  String get duration;
  @override
  @JsonKey(name: "is_recommended")
  bool get isRecommended;
  @override
  @JsonKey(ignore: true)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
