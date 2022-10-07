import 'package:freezed_annotation/freezed_annotation.dart';

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
class Habit with _$Habit {
  const factory Habit({
    required String id,
    required String user,
    required String name,
    required HabitType type,
    required Period period,
    required int goalValue,
    required int unitValue,
    required String? groupId,
    required int color,
    required String unit,
    required String description,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
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
