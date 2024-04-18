import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'home.dart';
import 'notifications.dart';

class Favourites extends StatelessWidget {
  static String routeName = '/favourites';

  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Favourites Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Notifications.routeName);
          }
        },
      ),
    );
  }
}
