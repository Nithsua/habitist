import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitist/app/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    await Firebase.initializeApp();
    runApp(const ProviderScope(child: MyApp()));
  }, (error, stackTrace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitist',
      theme: Theme.of(context).copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: Colors.white, foregroundColor: Colors.black),
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: GoogleFonts.nunitoSans().fontFamily),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(color: Colors.white)),
      ),
      home: const Wrapper(),
    );
  }
}
