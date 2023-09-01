import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/common/extension/color.dart';

part 'habit.model.freezed.dart';
part 'habit.model.g.dart';

enum HabitType {
  gain,
  lose,
}

enum Period {
  daily,
  weekly,
  monthly,
}

@freezed
class CustomColor with _$CustomColor {
  const factory CustomColor({
    required int red,
    required int blue,
    required int green,
    required int alpha,
  }) = _CustomColor;

  factory CustomColor.fromJson(Map<String, dynamic> json) =>
      _$CustomColorFromJson(json);
}

@freezed
class Habit with _$Habit {
  const Habit._();

  const factory Habit({
    required String id,
    required String user,
    required String name,
    required HabitType type,
    required Period period,
    required int goalValue,
    required int unitValue,
    required String? groupId,
    required CustomColor color,
    required String? unit,
    required String description,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

  bool get validate =>
      goalValue > 0 &&
      (unitValue > 0 && unitValue <= goalValue) &&
      name.isNotEmpty;

  factory Habit.initial(String id, String user) => Habit(
        id: id,
        user: user,
        name: '',
        type: HabitType.gain,
        period: Period.daily,
        goalValue: 0,
        unitValue: 0,
        groupId: null,
        color: CustomColor.fromJson(ColorExtension(Colors.amber).toJson()),
        unit: null,
        description: '',
      );
}

@freezed
class Journal with _$Journal {
  const factory Journal({
    required String habitId,
    required DateTime dateTime,
    required int value,
  }) = _Journal;

  factory Journal.fromJson(Map<String, dynamic> json) =>
      _$JournalFromJson(json);
}
