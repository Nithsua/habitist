part of 'habit.viewmodel.dart';

@freezed
class HabitState with _$HabitState {
  factory HabitState.loaded({
    required Map<String, Habit> habits,
  }) = HabitLoadedState;
  factory HabitState.loading() = HabitLoadingState;
}
