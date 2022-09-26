import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() {
    runApp(const ProviderScope(child: MyApp()));
  }, (error, stackTrace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitist',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: SizedBox.shrink()),
    );
  }
}
