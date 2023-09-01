import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/provider/singleton.provider.dart';
import 'package:habitist/app/common/repository/habit/habit.i.repository.dart';
import 'package:habitist/app/common/repository/habit/habit.repository.dart';

// Repositories
final habitRepositoryProvider = Provider<HabitRepository>(
  (ref) => IHabitRepository(firestore: ref.watch(firestoreInstance)),
);
