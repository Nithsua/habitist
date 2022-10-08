import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/models/view/onboard_screen/onboard_screen.model.dart';
import 'package:habitist/app/services/auth.service.dart';

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
