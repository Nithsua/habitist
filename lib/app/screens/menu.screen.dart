import 'package:flutter/material.dart';
import 'package:habitist/app/common/services/auth.service.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            title: Text('Menu'),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () => AuthenticationService().signOut(),
                title: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
