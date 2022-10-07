// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Habit _$$_HabitFromJson(Map<String, dynamic> json) => _$_Habit(
      id: json['id'] as String,
      user: json['user'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$HabitTypeEnumMap, json['type']),
      period: $enumDecode(_$PeriodEnumMap, json['period']),
      goalValue: json['goalValue'] as int,
      unitValue: json['unitValue'] as int,
      groupId: json['groupId'] as String?,
      color: json['color'] as int,
      unit: json['unit'] as String,
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
      'color': instance.color,
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

_$_Journal _$$_JournalFromJson(Map<String, dynamic> json) => _$_Journal(
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
