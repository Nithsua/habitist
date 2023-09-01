import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitist/app/common/model/habit/habit.model.dart';
import 'package:habitist/app/common/repository/habit/habit.repository.dart';

class IHabitRepository implements HabitRepository {
  final FirebaseFirestore firestore;

  const IHabitRepository({required this.firestore});

  @override
  Future<List<Habit>> getHabits({required String userId}) async {
    return firestore
        .collection('habits')
        .where('user', isEqualTo: userId)
        .get()
        .then((value) {
      final habits = <Habit>[];
      for (var doc in value.docs) {
        habits.add(Habit.fromJson(doc.data()));
      }
      return habits;
    });
  }

  @override
  Future<Habit> createHabit({required Habit habit}) async {
    return await firestore
        .collection('habits')
        .doc(habit.id)
        .set(habit.toJson())
        .then((value) => habit, onError: (_, __) => throw _);
  }

  @override
  Future<Habit> updateHabit({required Habit habit}) async {
    return await firestore
        .collection('habits')
        .doc(habit.id)
        .set(habit.toJson())
        .then((_) => habit, onError: (_, __) {});
  }

  // TODO: Rename function
  @override
  Future<void> addToTheJournal(
      {required Habit habit, required Journal journal}) async {
    await firestore
        .collection('habits')
        .doc(habit.id)
        .collection('journal')
        .doc()
        .set(journal.toJson())
        .onError((error, stackTrace) {});
  }

  @override
  Future<void> popTheJournal({required Habit habit}) async {
    return await firestore
        .collection('habits')
        .doc(habit.id)
        .collection('journal')
        .get()
        .then((value) async {
      final docs = value.docs;
      await docs[docs.length - 1].reference.delete();
    }, onError: (_, __) {});
  }

  @override
  Future<List<Journal>> getJournal(
      {required Habit habit, required Journal journal}) async {
    return await firestore
        .collection('habits')
        .doc(habit.id)
        .collection('journal')
        .get()
        .then((value) {
      final journals = <Journal>[];
      for (var doc in value.docs) {
        journals.add(Journal.fromJson(doc.data()));
      }
      return journals;
    }, onError: ((error, stackTrace) {}));
  }
}
