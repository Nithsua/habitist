import 'package:habitist/app/common/models/habit/habit.model.dart';

abstract interface class HabitRepository {
  Future<List<Habit>> getHabits({required String userId});
  Future<Habit> createHabit({required Habit habit});
  Future<Habit> updateHabit({required Habit habit});
  // TODO: Rename function
  Future<void> addToTheJournal(
      {required Habit habit, required Journal journal});
  Future<void> popTheJournal({required Habit habit});
  Future<List<Journal>> getJournal(
      {required Habit habit, required Journal journal});
}
