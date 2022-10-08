// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomColor _$$_CustomColorFromJson(Map json) => _$_CustomColor(
      red: json['red'] as int,
      blue: json['blue'] as int,
      green: json['green'] as int,
      alpha: json['alpha'] as int,
    );

Map<String, dynamic> _$$_CustomColorToJson(_$_CustomColor instance) =>
    <String, dynamic>{
      'red': instance.red,
      'blue': instance.blue,
      'green': instance.green,
      'alpha': instance.alpha,
    };

_$_Habit _$$_HabitFromJson(Map json) => _$_Habit(
      id: json['id'] as String,
      user: json['user'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$HabitTypeEnumMap, json['type']),
      period: $enumDecode(_$PeriodEnumMap, json['period']),
      goalValue: json['goalValue'] as int,
      unitValue: json['unitValue'] as int,
      groupId: json['groupId'] as String?,
      color:
          CustomColor.fromJson(Map<String, dynamic>.from(json['color'] as Map)),
      unit: json['unit'] as String?,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_HabitToJson(_$_Habit instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'name': instance.name,
      'type': _$HabitTypeEnumMap[instance.type]!,
      'period': _$PeriodEnumMap[instance.period]!,
      'goalValue': instance.goalValue,
      'unitValue': instance.unitValue,
      'groupId': instance.groupId,
      'color': instance.color.toJson(),
      'unit': instance.unit,
      'description': instance.description,
    };

const _$HabitTypeEnumMap = {
  HabitType.gain: 'gain',
  HabitType.lose: 'lose',
};

const _$PeriodEnumMap = {
  Period.daily: 'daily',
  Period.weekly: 'weekly',
  Period.monthly: 'monthly',
};

_$_Journal _$$_JournalFromJson(Map json) => _$_Journal(
      habitId: json['habitId'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_JournalToJson(_$_Journal instance) =>
    <String, dynamic>{
      'habitId': instance.habitId,
      'dateTime': instance.dateTime.toIso8601String(),
      'value': instance.value,
    };
