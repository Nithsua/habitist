import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/repository/habit/habit.i.repository.dart';
import 'package:habitist/app/common/repository/habit/habit.repository.dart';
import 'package:habitist/app/common/viewmodel/habit/habit.viewmodel.dart';

// ViewModels
final habitViewModelProvider =
    AsyncNotifierProvider<HabitViewModel, HabitState>(() {
  return HabitViewModel();
});

// Repositories
final habitRepositoryProvider = Provider<HabitRepository>(
    (ref) => IHabitRepository(firestore: ref.read(firestoreInstance)));

// Other Singletons
final firestoreInstance =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);
final firebaseAuthInstance =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

final userStreamProvider =
    StreamProvider((ref) => ref.read(firebaseAuthInstance).userChanges());
