// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenModel {
  List<Habit> get habits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenModelCopyWith<HomeScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenModelCopyWith<$Res> {
  factory $HomeScreenModelCopyWith(
          HomeScreenModel value, $Res Function(HomeScreenModel) then) =
      _$HomeScreenModelCopyWithImpl<$Res>;
  $Res call({List<Habit> habits});
}

/// @nodoc
class _$HomeScreenModelCopyWithImpl<$Res>
    implements $HomeScreenModelCopyWith<$Res> {
  _$HomeScreenModelCopyWithImpl(this._value, this._then);

  final HomeScreenModel _value;
  // ignore: unused_field
  final $Res Function(HomeScreenModel) _then;

  @override
  $Res call({
    Object? habits = freezed,
  }) {
    return _then(_value.copyWith(
      habits: habits == freezed
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeScreenModelCopyWith<$Res>
    implements $HomeScreenModelCopyWith<$Res> {
  factory _$$_HomeScreenModelCopyWith(
          _$_HomeScreenModel value, $Res Function(_$_HomeScreenModel) then) =
      __$$_HomeScreenModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Habit> habits});
}

/// @nodoc
class __$$_HomeScreenModelCopyWithImpl<$Res>
    extends _$HomeScreenModelCopyWithImpl<$Res>
    implements _$$_HomeScreenModelCopyWith<$Res> {
  __$$_HomeScreenModelCopyWithImpl(
      _$_HomeScreenModel _value, $Res Function(_$_HomeScreenModel) _then)
      : super(_value, (v) => _then(v as _$_HomeScreenModel));

  @override
  _$_HomeScreenModel get _value => super._value as _$_HomeScreenModel;

  @override
  $Res call({
    Object? habits = freezed,
  }) {
    return _then(_$_HomeScreenModel(
      habits: habits == freezed
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc

class _$_HomeScreenModel implements _HomeScreenModel {
  const _$_HomeScreenModel({required final List<Habit> habits})
      : _habits = habits;

  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'HomeScreenModel(habits: $habits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenModel &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  @JsonKey(ignore: true)
  @override
  _$$_HomeScreenModelCopyWith<_$_HomeScreenModel> get copyWith =>
      __$$_HomeScreenModelCopyWithImpl<_$_HomeScreenModel>(this, _$identity);
}

abstract class _HomeScreenModel implements HomeScreenModel {
  const factory _HomeScreenModel({required final List<Habit> habits}) =
      _$_HomeScreenModel;

  @override
  List<Habit> get habits;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenModelCopyWith<_$_HomeScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
