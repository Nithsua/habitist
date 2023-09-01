import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/provider/repository.provider.dart';
import 'package:habitist/app/common/provider/singleton.provider.dart';
import 'package:habitist/app/common/repository/habit/habit.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/common/model/habit/habit.model.dart';

part 'habit.state.dart';
part 'habit.viewmodel.freezed.dart';

class HabitViewModel extends AsyncNotifier<HabitState> {
  late final HabitRepository habitRepository;

  HabitViewModel() {
    habitRepository = ref.read(habitRepositoryProvider);
  }

  @override
  Future<HabitState> build() async {
    return await ref.watch(userStreamProvider).when(
          data: (user) async {
            if (user != null) {
              final mapEntries = await habitRepository
                  .getHabits(userId: user.uid)
                  .then((habits) => habits.map((e) => MapEntry(e.id, e)));
              return HabitLoadedState(habits: Map.fromEntries(mapEntries));
            }
            throw Exception('User is null');
          },
          error: (_, __) => throw Exception('Error in user stream'),
          loading: () => HabitLoadingState(),
        );
  }

  void reload() {
    ref.invalidateSelf();
  }

  Future<void> createHabit({required Habit habit}) async {
    await habitRepository.createHabit(habit: habit);
  }
}
