import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/repository/habit/habit.i.repository.dart';
import 'package:habitist/app/common/repository/habit/habit.repository.dart';
import 'package:habitist/app/common/utils/singleton.provider.dart';

// Repositories
final habitRepositoryProvider = Provider<HabitRepository>(
    (ref) => IHabitRepository(firestore: ref.read(firestoreInstance)));
