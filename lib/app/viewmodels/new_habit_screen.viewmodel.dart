import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/constants.dart';
import 'package:habitist/app/extension/color.dart';
import 'package:habitist/app/models/data/habit/habit.model.dart';
import 'package:habitist/app/models/view/new_habit_screen/new_habit_screen.model.dart';
import 'package:habitist/app/services/habit.service.dart';

class NewHabitScreenViewModel extends StateNotifier<NewHabitScreenModel> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController totalCountController = TextEditingController();
  final TextEditingController incrementalController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  NewHabitScreenViewModel() : super(NewHabitScreenModel.initial());

  void changeName(String name) =>
      state = state.copyWith(habit: state.habit.copyWith(name: name));

  void changeType(int type) => state =
      state.copyWith(habit: state.habit.copyWith(type: HabitType.values[type]));

  void changePeriod(int period) => state = state.copyWith(
      habit: state.habit.copyWith(period: Period.values[period]));

  void changeCount(String count) => state =
      state.copyWith(habit: state.habit.copyWith(goalValue: int.parse(count)));

  void changeIncrementalCount(String count) => state =
      state.copyWith(habit: state.habit.copyWith(unitValue: int.parse(count)));

  void changeUnit(String unit) =>
      state = state.copyWith(habit: state.habit.copyWith(unit: unit));

  void changeDescription(String description) => state =
      state.copyWith(habit: state.habit.copyWith(description: description));

  void changeColor(int index) => state = state.copyWith(
      habit: state.habit.copyWith(
          color: CustomColor.fromJson(
              ColorExtension(colorPalettes[index]).toJson())),
      selectedColor: index);

  Future<void> createHabit() async {
    await HabitService().createHabit(habit: state.habit);
  }
}
