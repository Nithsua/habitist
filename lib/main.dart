import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/common/provider/singleton.provider.dart';
import 'package:habitist/app/module/onboarding/view/onboard.screen.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(
      const ProviderScope(
        child: Habitist(),
      ),
    );
  }, (error, stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

class Habitist extends ConsumerWidget {
  const Habitist({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userStreamProvider).mapOrNull(
          data: (user) {
            if (user.value != null) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: ref.read(routerProvider).router,
                title: 'Habitist',
                theme: ref.read(themeProvider).theme,
              );
            }
            return null;
          },
//               error: (_, __) {
// return
//               },
        ) ??
        MaterialApp(
          title: 'Habitist',
          debugShowCheckedModeBanner: false,
          theme: ref.read(themeProvider).theme,
          home: OnboardScreen(),
        );
  }
}
