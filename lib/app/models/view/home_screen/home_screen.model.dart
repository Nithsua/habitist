import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/models/data/habit/habit.model.dart';

part 'home_screen.model.freezed.dart';

@freezed
class HomeScreenModel with _$HomeScreenModel {
  const factory HomeScreenModel({
    required List<Habit> habits,
  }) = _HomeScreenModel;
}
