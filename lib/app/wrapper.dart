import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:habitist/app/screens/home.screen.dart';
import 'package:habitist/app/screens/onboard.screen.dart';
import 'package:habitist/main.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  StreamSubscription<User?>? _streamSubscription;

  @override
  void initState() {
    authChanges();
    super.initState();
  }

  void authChanges() {
    _streamSubscription ??= FirebaseAuth.instance.userChanges().listen((event) {
      if (event != null) {
        navigationKey.currentState!.pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (route) => false);
      } else {
        navigationKey.currentState!.pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => OnboardScreen()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) => const SplashLoad();
}

class SplashLoad extends StatelessWidget {
  const SplashLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
