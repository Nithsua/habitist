import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/screens/activity.widget.dart';
import 'package:habitist/app/screens/new_habit.screen.dart';

final colorPalettes = [
  Colors.amber.shade100,
  Colors.red.shade100,
];

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Hi, Nithsua\n',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextSpan(
                      text: 'Welcome Back',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ]),
              ),
            ),

            OutlinedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewHabitScreen())),
                child: const Text('check')),
            // const Highlights(),
            const SizedBox(height: 20.0),
            const ActivityListView(),
          ],
        )),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (p0) {},
        items: [],
      ),
    );
  }
}

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 16.0,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: 170,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            gradient:
                const LinearGradient(colors: [Colors.black, Colors.black54]),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: kElevationToShadow[0],
          ),
          child: SizedBox(
            width: constraints.maxWidth,
          ),
        );
      }),
    );
  }
}

class ActivityListView extends StatelessWidget {
  const ActivityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Activity(
                  fillColor: colorPalettes[0],
                  fill: 0.8,
                )),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int)? onTap;
  final List<BottomNavigationBarItem> items;
  const CustomBottomNavigationBar(
      {Key? key, required this.onTap, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
