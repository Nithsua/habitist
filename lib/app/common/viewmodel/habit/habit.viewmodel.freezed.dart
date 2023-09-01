// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HabitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Habit> habits) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Habit> habits)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Habit> habits)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitLoadedState value) loaded,
    required TResult Function(HabitLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitLoadedState value)? loaded,
    TResult? Function(HabitLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitLoadedState value)? loaded,
    TResult Function(HabitLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStateCopyWith<$Res> {
  factory $HabitStateCopyWith(
          HabitState value, $Res Function(HabitState) then) =
      _$HabitStateCopyWithImpl<$Res, HabitState>;
}

/// @nodoc
class _$HabitStateCopyWithImpl<$Res, $Val extends HabitState>
    implements $HabitStateCopyWith<$Res> {
  _$HabitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitLoadedStateCopyWith<$Res> {
  factory _$$HabitLoadedStateCopyWith(
          _$HabitLoadedState value, $Res Function(_$HabitLoadedState) then) =
      __$$HabitLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Habit> habits});
}

/// @nodoc
class __$$HabitLoadedStateCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$HabitLoadedState>
    implements _$$HabitLoadedStateCopyWith<$Res> {
  __$$HabitLoadedStateCopyWithImpl(
      _$HabitLoadedState _value, $Res Function(_$HabitLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
  }) {
    return _then(_$HabitLoadedState(
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as Map<String, Habit>,
    ));
  }
}

/// @nodoc

class _$HabitLoadedState implements HabitLoadedState {
  _$HabitLoadedState({required final Map<String, Habit> habits})
      : _habits = habits;

  final Map<String, Habit> _habits;
  @override
  Map<String, Habit> get habits {
    if (_habits is EqualUnmodifiableMapView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_habits);
  }

  @override
  String toString() {
    return 'HabitState.loaded(habits: $habits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitLoadedState &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitLoadedStateCopyWith<_$HabitLoadedState> get copyWith =>
      __$$HabitLoadedStateCopyWithImpl<_$HabitLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Habit> habits) loaded,
    required TResult Function() loading,
  }) {
    return loaded(habits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Habit> habits)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Habit> habits)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitLoadedState value) loaded,
    required TResult Function(HabitLoadingState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitLoadedState value)? loaded,
    TResult? Function(HabitLoadingState value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitLoadedState value)? loaded,
    TResult Function(HabitLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HabitLoadedState implements HabitState {
  factory HabitLoadedState({required final Map<String, Habit> habits}) =
      _$HabitLoadedState;

  Map<String, Habit> get habits;
  @JsonKey(ignore: true)
  _$$HabitLoadedStateCopyWith<_$HabitLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HabitLoadingStateCopyWith<$Res> {
  factory _$$HabitLoadingStateCopyWith(
          _$HabitLoadingState value, $Res Function(_$HabitLoadingState) then) =
      __$$HabitLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitLoadingStateCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$HabitLoadingState>
    implements _$$HabitLoadingStateCopyWith<$Res> {
  __$$HabitLoadingStateCopyWithImpl(
      _$HabitLoadingState _value, $Res Function(_$HabitLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitLoadingState implements HabitLoadingState {
  _$HabitLoadingState();

  @override
  String toString() {
    return 'HabitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, Habit> habits) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, Habit> habits)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, Habit> habits)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitLoadedState value) loaded,
    required TResult Function(HabitLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitLoadedState value)? loaded,
    TResult? Function(HabitLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitLoadedState value)? loaded,
    TResult Function(HabitLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitLoadingState implements HabitState {
  factory HabitLoadingState() = _$HabitLoadingState;
}
