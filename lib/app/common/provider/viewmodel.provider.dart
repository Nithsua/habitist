import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/viewmodel/habit/habit.viewmodel.dart';

// ViewModels
final habitViewModelProvider =
    AsyncNotifierProvider<HabitViewModel, HabitState>(HabitViewModel.new);
