// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomColor _$CustomColorFromJson(Map<String, dynamic> json) {
  return _CustomColor.fromJson(json);
}

/// @nodoc
mixin _$CustomColor {
  int get red => throw _privateConstructorUsedError;
  int get blue => throw _privateConstructorUsedError;
  int get green => throw _privateConstructorUsedError;
  int get alpha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomColorCopyWith<CustomColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomColorCopyWith<$Res> {
  factory $CustomColorCopyWith(
          CustomColor value, $Res Function(CustomColor) then) =
      _$CustomColorCopyWithImpl<$Res, CustomColor>;
  @useResult
  $Res call({int red, int blue, int green, int alpha});
}

/// @nodoc
class _$CustomColorCopyWithImpl<$Res, $Val extends CustomColor>
    implements $CustomColorCopyWith<$Res> {
  _$CustomColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? blue = null,
    Object? green = null,
    Object? alpha = null,
  }) {
    return _then(_value.copyWith(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomColorCopyWith<$Res>
    implements $CustomColorCopyWith<$Res> {
  factory _$$_CustomColorCopyWith(
          _$_CustomColor value, $Res Function(_$_CustomColor) then) =
      __$$_CustomColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int red, int blue, int green, int alpha});
}

/// @nodoc
class __$$_CustomColorCopyWithImpl<$Res>
    extends _$CustomColorCopyWithImpl<$Res, _$_CustomColor>
    implements _$$_CustomColorCopyWith<$Res> {
  __$$_CustomColorCopyWithImpl(
      _$_CustomColor _value, $Res Function(_$_CustomColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? blue = null,
    Object? green = null,
    Object? alpha = null,
  }) {
    return _then(_$_CustomColor(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomColor implements _CustomColor {
  const _$_CustomColor(
      {required this.red,
      required this.blue,
      required this.green,
      required this.alpha});

  factory _$_CustomColor.fromJson(Map<String, dynamic> json) =>
      _$$_CustomColorFromJson(json);

  @override
  final int red;
  @override
  final int blue;
  @override
  final int green;
  @override
  final int alpha;

  @override
  String toString() {
    return 'CustomColor(red: $red, blue: $blue, green: $green, alpha: $alpha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomColor &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.blue, blue) || other.blue == blue) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.alpha, alpha) || other.alpha == alpha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, red, blue, green, alpha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomColorCopyWith<_$_CustomColor> get copyWith =>
      __$$_CustomColorCopyWithImpl<_$_CustomColor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomColorToJson(
      this,
    );
  }
}

abstract class _CustomColor implements CustomColor {
  const factory _CustomColor(
      {required final int red,
      required final int blue,
      required final int green,
      required final int alpha}) = _$_CustomColor;

  factory _CustomColor.fromJson(Map<String, dynamic> json) =
      _$_CustomColor.fromJson;

  @override
  int get red;
  @override
  int get blue;
  @override
  int get green;
  @override
  int get alpha;
  @override
  @JsonKey(ignore: true)
  _$$_CustomColorCopyWith<_$_CustomColor> get copyWith =>
      throw _privateConstructorUsedError;
}

Habit _$HabitFromJson(Map<String, dynamic> json) {
  return _Habit.fromJson(json);
}

/// @nodoc
mixin _$Habit {
  String get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  HabitType get type => throw _privateConstructorUsedError;
  Period get period => throw _privateConstructorUsedError;
  int get goalValue => throw _privateConstructorUsedError;
  int get unitValue => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  CustomColor get color => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res, Habit>;
  @useResult
  $Res call(
      {String id,
      String user,
      String name,
      HabitType type,
      Period period,
      int goalValue,
      int unitValue,
      String? groupId,
      CustomColor color,
      String? unit,
      String description});

  $CustomColorCopyWith<$Res> get color;
}

/// @nodoc
class _$HabitCopyWithImpl<$Res, $Val extends Habit>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? name = null,
    Object? type = null,
    Object? period = null,
    Object? goalValue = null,
    Object? unitValue = null,
    Object? groupId = freezed,
    Object? color = null,
    Object? unit = freezed,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HabitType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      goalValue: null == goalValue
          ? _value.goalValue
          : goalValue // ignore: cast_nullable_to_non_nullable
              as int,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomColorCopyWith<$Res> get color {
    return $CustomColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HabitCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$$_HabitCopyWith(_$_Habit value, $Res Function(_$_Habit) then) =
      __$$_HabitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String user,
      String name,
      HabitType type,
      Period period,
      int goalValue,
      int unitValue,
      String? groupId,
      CustomColor color,
      String? unit,
      String description});

  @override
  $CustomColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$_HabitCopyWithImpl<$Res> extends _$HabitCopyWithImpl<$Res, _$_Habit>
    implements _$$_HabitCopyWith<$Res> {
  __$$_HabitCopyWithImpl(_$_Habit _value, $Res Function(_$_Habit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? name = null,
    Object? type = null,
    Object? period = null,
    Object? goalValue = null,
    Object? unitValue = null,
    Object? groupId = freezed,
    Object? color = null,
    Object? unit = freezed,
    Object? description = null,
  }) {
    return _then(_$_Habit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HabitType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      goalValue: null == goalValue
          ? _value.goalValue
          : goalValue // ignore: cast_nullable_to_non_nullable
              as int,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Habit extends _Habit {
  const _$_Habit(
      {required this.id,
      required this.user,
      required this.name,
      required this.type,
      required this.period,
      required this.goalValue,
      required this.unitValue,
      required this.groupId,
      required this.color,
      required this.unit,
      required this.description})
      : super._();

  factory _$_Habit.fromJson(Map<String, dynamic> json) =>
      _$$_HabitFromJson(json);

  @override
  final String id;
  @override
  final String user;
  @override
  final String name;
  @override
  final HabitType type;
  @override
  final Period period;
  @override
  final int goalValue;
  @override
  final int unitValue;
  @override
  final String? groupId;
  @override
  final CustomColor color;
  @override
  final String? unit;
  @override
  final String description;

  @override
  String toString() {
    return 'Habit(id: $id, user: $user, name: $name, type: $type, period: $period, goalValue: $goalValue, unitValue: $unitValue, groupId: $groupId, color: $color, unit: $unit, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Habit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.goalValue, goalValue) ||
                other.goalValue == goalValue) &&
            (identical(other.unitValue, unitValue) ||
                other.unitValue == unitValue) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, name, type, period,
      goalValue, unitValue, groupId, color, unit, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HabitCopyWith<_$_Habit> get copyWith =>
      __$$_HabitCopyWithImpl<_$_Habit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HabitToJson(
      this,
    );
  }
}

abstract class _Habit extends Habit {
  const factory _Habit(
      {required final String id,
      required final String user,
      required final String name,
      required final HabitType type,
      required final Period period,
      required final int goalValue,
      required final int unitValue,
      required final String? groupId,
      required final CustomColor color,
      required final String? unit,
      required final String description}) = _$_Habit;
  const _Habit._() : super._();

  factory _Habit.fromJson(Map<String, dynamic> json) = _$_Habit.fromJson;

  @override
  String get id;
  @override
  String get user;
  @override
  String get name;
  @override
  HabitType get type;
  @override
  Period get period;
  @override
  int get goalValue;
  @override
  int get unitValue;
  @override
  String? get groupId;
  @override
  CustomColor get color;
  @override
  String? get unit;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_HabitCopyWith<_$_Habit> get copyWith =>
      throw _privateConstructorUsedError;
}

Journal _$JournalFromJson(Map<String, dynamic> json) {
  return _Journal.fromJson(json);
}

/// @nodoc
mixin _$Journal {
  String get habitId => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JournalCopyWith<Journal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalCopyWith<$Res> {
  factory $JournalCopyWith(Journal value, $Res Function(Journal) then) =
      _$JournalCopyWithImpl<$Res, Journal>;
  @useResult
  $Res call({String habitId, DateTime dateTime, int value});
}

/// @nodoc
class _$JournalCopyWithImpl<$Res, $Val extends Journal>
    implements $JournalCopyWith<$Res> {
  _$JournalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? dateTime = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JournalCopyWith<$Res> implements $JournalCopyWith<$Res> {
  factory _$$_JournalCopyWith(
          _$_Journal value, $Res Function(_$_Journal) then) =
      __$$_JournalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String habitId, DateTime dateTime, int value});
}

/// @nodoc
class __$$_JournalCopyWithImpl<$Res>
    extends _$JournalCopyWithImpl<$Res, _$_Journal>
    implements _$$_JournalCopyWith<$Res> {
  __$$_JournalCopyWithImpl(_$_Journal _value, $Res Function(_$_Journal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? dateTime = null,
    Object? value = null,
  }) {
    return _then(_$_Journal(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Journal implements _Journal {
  const _$_Journal(
      {required this.habitId, required this.dateTime, required this.value});

  factory _$_Journal.fromJson(Map<String, dynamic> json) =>
      _$$_JournalFromJson(json);

  @override
  final String habitId;
  @override
  final DateTime dateTime;
  @override
  final int value;

  @override
  String toString() {
    return 'Journal(habitId: $habitId, dateTime: $dateTime, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Journal &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, habitId, dateTime, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JournalCopyWith<_$_Journal> get copyWith =>
      __$$_JournalCopyWithImpl<_$_Journal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JournalToJson(
      this,
    );
  }
}

abstract class _Journal implements Journal {
  const factory _Journal(
      {required final String habitId,
      required final DateTime dateTime,
      required final int value}) = _$_Journal;

  factory _Journal.fromJson(Map<String, dynamic> json) = _$_Journal.fromJson;

  @override
  String get habitId;
  @override
  DateTime get dateTime;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_JournalCopyWith<_$_Journal> get copyWith =>
      throw _privateConstructorUsedError;
}
