import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/common/models/habit/habit.model.dart';
import 'package:uuid/uuid.dart';

part 'new_habit.screen.model.freezed.dart';

@freezed
class NewHabitScreenModel with _$NewHabitScreenModel {
  const NewHabitScreenModel._();

  const factory NewHabitScreenModel({
    required Habit habit,
    required bool loading,
    required int selectedColor,
  }) = _NewHabitScreenModel;

  factory NewHabitScreenModel.initial(String userId) => NewHabitScreenModel(
        loading: false,
        habit: Habit.initial(const Uuid().v4(), userId),
        selectedColor: 0,
      );
}
