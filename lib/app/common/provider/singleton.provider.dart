import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/service/router.service.dart';
import 'package:habitist/app/common/util/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Firebase
final firestoreInstance =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);
final firebaseAuthInstance =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);
final userStreamProvider =
    StreamProvider((ref) => ref.watch(firebaseAuthInstance).userChanges());

// Routing
final routerProvider = Provider(
  (ref) => RouterService(ref.watch(userStreamProvider).asData?.value),
);

// Theme
final themeProvider = Provider((_) => AppTheme.instance);
