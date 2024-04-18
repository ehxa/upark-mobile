import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'favourites.dart';
import 'home.dart';

class Notifications extends StatelessWidget {
  static String routeName = '/notifications';

  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Notifications Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          }
          if (index == 1) {
            Navigator.pushNamed(context, Favourites.routeName);
          }
        },
      ),
    );
  }
}
