import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:habitist/app/module/home/screen/home.screen.dart';
import 'package:habitist/app/module/onboarding/view/onboard.screen.dart';

final class RouterService {
  late final GlobalKey<NavigatorState> globalNavigationKey;
  late final GoRouter router;

  RouterService(User? user) {
    globalNavigationKey = GlobalKey<NavigatorState>();
    router = GoRouter(
      navigatorKey: globalNavigationKey,
      routes: routes,
      initialLocation: '/',
      redirect: (context, state) {
        if (user == null) {
          return '/onboard';
        }
        return null;
      },
    );
  }

  final routes = <RouteBase>[
    GoRoute(
      path: '/',
      redirect: (_, __) => '/home',
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/onboard',
      builder: (context, state) => OnboardScreen(),
    ),
  ];
}
