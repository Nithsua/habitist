// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboard_screen.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardScreenModel {
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardScreenModelCopyWith<OnboardScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardScreenModelCopyWith<$Res> {
  factory $OnboardScreenModelCopyWith(
          OnboardScreenModel value, $Res Function(OnboardScreenModel) then) =
      _$OnboardScreenModelCopyWithImpl<$Res>;
  $Res call({bool loading});
}

/// @nodoc
class _$OnboardScreenModelCopyWithImpl<$Res>
    implements $OnboardScreenModelCopyWith<$Res> {
  _$OnboardScreenModelCopyWithImpl(this._value, this._then);

  final OnboardScreenModel _value;
  // ignore: unused_field
  final $Res Function(OnboardScreenModel) _then;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OnboardScreenModelCopyWith<$Res>
    implements $OnboardScreenModelCopyWith<$Res> {
  factory _$$_OnboardScreenModelCopyWith(_$_OnboardScreenModel value,
          $Res Function(_$_OnboardScreenModel) then) =
      __$$_OnboardScreenModelCopyWithImpl<$Res>;
  @override
  $Res call({bool loading});
}

/// @nodoc
class __$$_OnboardScreenModelCopyWithImpl<$Res>
    extends _$OnboardScreenModelCopyWithImpl<$Res>
    implements _$$_OnboardScreenModelCopyWith<$Res> {
  __$$_OnboardScreenModelCopyWithImpl(
      _$_OnboardScreenModel _value, $Res Function(_$_OnboardScreenModel) _then)
      : super(_value, (v) => _then(v as _$_OnboardScreenModel));

  @override
  _$_OnboardScreenModel get _value => super._value as _$_OnboardScreenModel;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_$_OnboardScreenModel(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnboardScreenModel implements _OnboardScreenModel {
  const _$_OnboardScreenModel({required this.loading});

  @override
  final bool loading;

  @override
  String toString() {
    return 'OnboardScreenModel(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardScreenModel &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$$_OnboardScreenModelCopyWith<_$_OnboardScreenModel> get copyWith =>
      __$$_OnboardScreenModelCopyWithImpl<_$_OnboardScreenModel>(
          this, _$identity);
}

abstract class _OnboardScreenModel implements OnboardScreenModel {
  const factory _OnboardScreenModel({required final bool loading}) =
      _$_OnboardScreenModel;

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardScreenModelCopyWith<_$_OnboardScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
