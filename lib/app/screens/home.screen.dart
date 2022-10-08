import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/global_viewmodels.dart';
import 'package:habitist/app/models/data/habit/habit.model.dart';
import 'package:habitist/app/screens/activity.widget.dart';
import 'package:habitist/app/widgets/custom_bottom_navigaton_bar.widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ref.watch(homeScreenProvider).when(
              data: (data) => LayoutBuilder(builder: (context, constraints) {
                return RefreshIndicator(
                  onRefresh: () async =>
                      await ref.read(homeScreenProvider.notifier).fetchData(),
                  child: SizedBox.expand(
                    child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Hi, Nithsua\n',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge),
                                      TextSpan(
                                          text: 'Welcome Back',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                // const Highlights(),
                                const SizedBox(height: 20.0),
                                ActivityListView(
                                  habits: data.habits,
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                );
              }),
              error: (error, stackTrace) => Container(),
              loading: () => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(),
                    const CircularProgressIndicator(),
                  ],
                ),
              ),
            ),
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
  final List<Habit> habits;
  const ActivityListView({super.key, required this.habits});

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
            itemCount: habits.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Activity(
                  habit: habits[index],
                  fill: 0.8,
                )),
          ),
        ],
      ),
    );
  }
}
