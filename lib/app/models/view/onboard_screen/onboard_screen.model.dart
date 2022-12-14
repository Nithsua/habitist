import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard_screen.model.freezed.dart';

@freezed
class OnboardScreenModel with _$OnboardScreenModel {
  const factory OnboardScreenModel({
    required bool loading,
  }) = _OnboardScreenModel;
}
