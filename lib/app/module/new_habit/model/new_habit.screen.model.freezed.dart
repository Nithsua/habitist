// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_habit.screen.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewHabitScreenModel {
  Habit get habit => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int get selectedColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewHabitScreenModelCopyWith<NewHabitScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewHabitScreenModelCopyWith<$Res> {
  factory $NewHabitScreenModelCopyWith(
          NewHabitScreenModel value, $Res Function(NewHabitScreenModel) then) =
      _$NewHabitScreenModelCopyWithImpl<$Res, NewHabitScreenModel>;
  @useResult
  $Res call({Habit habit, bool loading, int selectedColor});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class _$NewHabitScreenModelCopyWithImpl<$Res, $Val extends NewHabitScreenModel>
    implements $NewHabitScreenModelCopyWith<$Res> {
  _$NewHabitScreenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
    Object? loading = null,
    Object? selectedColor = null,
  }) {
    return _then(_value.copyWith(
      habit: null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res> get habit {
    return $HabitCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewHabitScreenModelCopyWith<$Res>
    implements $NewHabitScreenModelCopyWith<$Res> {
  factory _$$_NewHabitScreenModelCopyWith(_$_NewHabitScreenModel value,
          $Res Function(_$_NewHabitScreenModel) then) =
      __$$_NewHabitScreenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Habit habit, bool loading, int selectedColor});

  @override
  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$$_NewHabitScreenModelCopyWithImpl<$Res>
    extends _$NewHabitScreenModelCopyWithImpl<$Res, _$_NewHabitScreenModel>
    implements _$$_NewHabitScreenModelCopyWith<$Res> {
  __$$_NewHabitScreenModelCopyWithImpl(_$_NewHabitScreenModel _value,
      $Res Function(_$_NewHabitScreenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
    Object? loading = null,
    Object? selectedColor = null,
  }) {
    return _then(_$_NewHabitScreenModel(
      habit: null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NewHabitScreenModel extends _NewHabitScreenModel {
  const _$_NewHabitScreenModel(
      {required this.habit, required this.loading, required this.selectedColor})
      : super._();

  @override
  final Habit habit;
  @override
  final bool loading;
  @override
  final int selectedColor;

  @override
  String toString() {
    return 'NewHabitScreenModel(habit: $habit, loading: $loading, selectedColor: $selectedColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewHabitScreenModel &&
            (identical(other.habit, habit) || other.habit == habit) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit, loading, selectedColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewHabitScreenModelCopyWith<_$_NewHabitScreenModel> get copyWith =>
      __$$_NewHabitScreenModelCopyWithImpl<_$_NewHabitScreenModel>(
          this, _$identity);
}

abstract class _NewHabitScreenModel extends NewHabitScreenModel {
  const factory _NewHabitScreenModel(
      {required final Habit habit,
      required final bool loading,
      required final int selectedColor}) = _$_NewHabitScreenModel;
  const _NewHabitScreenModel._() : super._();

  @override
  Habit get habit;
  @override
  bool get loading;
  @override
  int get selectedColor;
  @override
  @JsonKey(ignore: true)
  _$$_NewHabitScreenModelCopyWith<_$_NewHabitScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
