import 'dart:io';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/models/view/onboard_screen/onboard_screen.model.dart';
import 'package:habitist/app/viewmodels/onboard_screen.viewmodel.dart';

class OnboardScreen extends ConsumerWidget {
  final pageController = PageController();
  final onboardScreenProvider =
      StateNotifierProvider<OnboardScreenViewModel, OnboardScreenModel>(
          (_) => OnboardScreenViewModel());
  OnboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/onboard_champ.png',
                  height: constraints.maxHeight * 0.65,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Positioned(
              bottom: 0,
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.4,
              child: Material(
                color: Colors.white,
                elevation: 15.0,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                child: PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    OnboardSubPageOne(
                        totalPages: 2,
                        onPressed: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        }),
                    OnboardSubPageTwo(
                        googleSignIn: ref
                            .read(onboardScreenProvider.notifier)
                            .signInWithGoogle,
                        appleSignIn: ref
                            .read(onboardScreenProvider.notifier)
                            .signInWithApple,
                        allowSignIn: !ref.watch(onboardScreenProvider).loading),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class OnboardSubPageOne extends StatelessWidget {
  final int totalPages;
  final VoidCallback? onPressed;
  const OnboardSubPageOne(
      {super.key, required this.totalPages, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Center(
            child: Column(
              children: [
                Text(
                  'Track your Habits',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Find your way, create a system and reach the goal',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              DotsIndicator(
                dotsCount: totalPages,
                position: 0.0,
                decorator: DotsDecorator(
                  activeColor: Colors.black,
                  shape: const CircleBorder(),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0)),
                ),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: onPressed,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class OnboardSubPageTwo extends StatelessWidget {
  final bool allowSignIn;
  final VoidCallback googleSignIn;
  final VoidCallback appleSignIn;
  const OnboardSubPageTwo(
      {super.key,
      required this.allowSignIn,
      required this.googleSignIn,
      required this.appleSignIn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Column(
            children: [
              Text(
                'Track your Habits',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Find your way, create a system and reach the goal',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Platform.isIOS
                  ? SignInButton(
                      leading: Image.asset(
                        'assets/logo/apple.png',
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                      text: 'Sign In with Apple',
                      disableColor: Colors.black,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      onPressed: allowSignIn ? appleSignIn : null,
                    )
                  : const SizedBox(),
              const SizedBox(height: 16.0),
              SignInButton(
                leading: Image.asset(
                  'assets/logo/google.png',
                  height: 25,
                  width: 25,
                ),
                text: 'Sign In with Google',
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                onPressed: allowSignIn ? googleSignIn : null,
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? disableColor;
  final Widget leading;
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  const SignInButton({
    super.key,
    this.onPressed,
    this.disableColor,
    this.foregroundColor = Colors.white,
    this.backgroundColor = Colors.black,
    required this.leading,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor,
      disabledColor: disableColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leading,
            const SizedBox(width: 8),
            Text(text,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: foregroundColor, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
