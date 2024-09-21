import 'package:evcs/core/errors/base_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//part 'base_state.g.dart';
part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const BaseState._();

  const factory BaseState.loading() = _LoadingState;

  const factory BaseState.initial() = _InitialState;

  const factory BaseState.failure({required BaseError error}) = _FailureState;

  const factory BaseState.success({required T data}) = _SuccessState;
}
