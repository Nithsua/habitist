import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/models/data/habit/habit.model.dart';
import 'package:uuid/uuid.dart';

part 'new_habit_screen.model.freezed.dart';

@freezed
class NewHabitScreenModel with _$NewHabitScreenModel {
  const NewHabitScreenModel._();

  const factory NewHabitScreenModel({
    required Habit habit,
    required bool loading,
  }) = _NewHabitScreenModel;

  factory NewHabitScreenModel.initial() => NewHabitScreenModel(
      loading: false, habit: Habit.initial(const Uuid().v4()));
}
