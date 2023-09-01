import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/services/auth.service.dart';
import 'package:habitist/app/module/onboarding/model/onboard.screen.model.dart';

class OnboardScreenViewModel extends StateNotifier<OnboardScreenModel> {
  final authenticationService = AuthenticationService();
  OnboardScreenViewModel() : super(const OnboardScreenModel(loading: false));

  Future<void> signInWithGoogle() async {
    state = state.copyWith(loading: true);
    await authenticationService.signInWithGoogle().whenComplete(() async =>
        await Future.delayed(const Duration(seconds: 1),
            () => state = state.copyWith(loading: false)));
  }

  Future<void> signInWithApple() async {}
}
