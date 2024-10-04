// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanState {
  BaseState<List<Plan>>? get getPlansState =>
      throw _privateConstructorUsedError;
  BaseState<bool>? get subscribeState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanStateCopyWith<PlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanStateCopyWith<$Res> {
  factory $PlanStateCopyWith(PlanState value, $Res Function(PlanState) then) =
      _$PlanStateCopyWithImpl<$Res, PlanState>;
  @useResult
  $Res call(
      {BaseState<List<Plan>>? getPlansState, BaseState<bool>? subscribeState});

  $BaseStateCopyWith<List<Plan>, $Res>? get getPlansState;
  $BaseStateCopyWith<bool, $Res>? get subscribeState;
}

/// @nodoc
class _$PlanStateCopyWithImpl<$Res, $Val extends PlanState>
    implements $PlanStateCopyWith<$Res> {
  _$PlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPlansState = freezed,
    Object? subscribeState = freezed,
  }) {
    return _then(_value.copyWith(
      getPlansState: freezed == getPlansState
          ? _value.getPlansState
          : getPlansState // ignore: cast_nullable_to_non_nullable
              as BaseState<List<Plan>>?,
      subscribeState: freezed == subscribeState
          ? _value.subscribeState
          : subscribeState // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStateCopyWith<List<Plan>, $Res>? get getPlansState {
    if (_value.getPlansState == null) {
      return null;
    }

    return $BaseStateCopyWith<List<Plan>, $Res>(_value.getPlansState!, (value) {
      return _then(_value.copyWith(getPlansState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStateCopyWith<bool, $Res>? get subscribeState {
    if (_value.subscribeState == null) {
      return null;
    }

    return $BaseStateCopyWith<bool, $Res>(_value.subscribeState!, (value) {
      return _then(_value.copyWith(subscribeState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanStateImplCopyWith<$Res>
    implements $PlanStateCopyWith<$Res> {
  factory _$$PlanStateImplCopyWith(
          _$PlanStateImpl value, $Res Function(_$PlanStateImpl) then) =
      __$$PlanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState<List<Plan>>? getPlansState, BaseState<bool>? subscribeState});

  @override
  $BaseStateCopyWith<List<Plan>, $Res>? get getPlansState;
  @override
  $BaseStateCopyWith<bool, $Res>? get subscribeState;
}

/// @nodoc
class __$$PlanStateImplCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$PlanStateImpl>
    implements _$$PlanStateImplCopyWith<$Res> {
  __$$PlanStateImplCopyWithImpl(
      _$PlanStateImpl _value, $Res Function(_$PlanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPlansState = freezed,
    Object? subscribeState = freezed,
  }) {
    return _then(_$PlanStateImpl(
      getPlansState: freezed == getPlansState
          ? _value.getPlansState
          : getPlansState // ignore: cast_nullable_to_non_nullable
              as BaseState<List<Plan>>?,
      subscribeState: freezed == subscribeState
          ? _value.subscribeState
          : subscribeState // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>?,
    ));
  }
}

/// @nodoc

class _$PlanStateImpl extends _PlanState {
  const _$PlanStateImpl({this.getPlansState, this.subscribeState}) : super._();

  @override
  final BaseState<List<Plan>>? getPlansState;
  @override
  final BaseState<bool>? subscribeState;

  @override
  String toString() {
    return 'PlanState(getPlansState: $getPlansState, subscribeState: $subscribeState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanStateImpl &&
            (identical(other.getPlansState, getPlansState) ||
                other.getPlansState == getPlansState) &&
            (identical(other.subscribeState, subscribeState) ||
                other.subscribeState == subscribeState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getPlansState, subscribeState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanStateImplCopyWith<_$PlanStateImpl> get copyWith =>
      __$$PlanStateImplCopyWithImpl<_$PlanStateImpl>(this, _$identity);
}

abstract class _PlanState extends PlanState {
  const factory _PlanState(
      {final BaseState<List<Plan>>? getPlansState,
      final BaseState<bool>? subscribeState}) = _$PlanStateImpl;
  const _PlanState._() : super._();

  @override
  BaseState<List<Plan>>? get getPlansState;
  @override
  BaseState<bool>? get subscribeState;
  @override
  @JsonKey(ignore: true)
  _$$PlanStateImplCopyWith<_$PlanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
