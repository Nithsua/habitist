import 'package:flutter/material.dart';
import 'package:habitist/app/module/new_habit/screen/new_habit.screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int)? onTap;
  final List<BottomNavigationBarItem> items;
  const CustomBottomNavigationBar(
      {Key? key, required this.onTap, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 60,
        child: Stack(
          children: [
            Center(
              child: FloatingActionButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewHabitScreen())),
                backgroundColor: Colors.black,
                child: const Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
