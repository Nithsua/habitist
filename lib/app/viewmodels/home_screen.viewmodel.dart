import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/models/view/home_screen/home_screen.model.dart';
import 'package:habitist/app/services/habit.service.dart';

class HomeScreenViewModel extends StateNotifier<AsyncValue<HomeScreenModel>> {
  final habitService = HabitService();
  HomeScreenViewModel() : super(const AsyncValue.loading()) {
    fetchData();
  }

  Future<void> fetchData() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    state = AsyncValue.data(HomeScreenModel(
        habits: await habitService
            .getHabits(userId: userId)
            .then((value) => value)));
  }
}
