import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitist/app/common/models/habit/habit.model.dart';

part 'home.screen.model.freezed.dart';

@freezed
class HomeScreenModel with _$HomeScreenModel {
  const factory HomeScreenModel({
    required List<Habit> habits,
  }) = _HomeScreenModel;
}
