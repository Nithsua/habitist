import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/provider/singleton.provider.dart';
import 'package:habitist/app/common/provider/viewmodel.provider.dart';
import 'package:habitist/app/common/util/constants.dart';
import 'package:habitist/app/common/extension/color.dart';
import 'package:habitist/app/common/model/habit/habit.model.dart';
import 'package:habitist/app/module/new_habit/model/new_habit.screen.model.dart';

class NewHabitScreenViewModel extends AutoDisposeNotifier<NewHabitScreenModel> {
  late final TextEditingController nameController;
  late final TextEditingController totalCountController;
  late final TextEditingController incrementalController;
  late final TextEditingController unitController;
  late final TextEditingController descriptionController;

  NewHabitScreenViewModel() : super() {
    nameController = TextEditingController();
    totalCountController = TextEditingController();
    incrementalController = TextEditingController();
    unitController = TextEditingController();
    descriptionController = TextEditingController();
  }

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
              ColorExtension(Constant.colorPalettes[index]).toJson())),
      selectedColor: index);

  Future<void> createHabit() async {
    await ref
        .read(habitViewModelProvider.notifier)
        .createHabit(habit: state.habit);
  }

  @override
  NewHabitScreenModel build() {
    final userId = ref.watch(userStreamProvider).value!.uid;
    return NewHabitScreenModel.initial(userId);
  }
}
