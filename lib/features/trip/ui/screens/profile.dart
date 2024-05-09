import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'parking.dart';
import 'home.dart';
import 'tickets.dart';

class Profile extends StatelessWidget {
  static String routeName = '/profile';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 1) {
            Navigator.pushNamed(context, Parking.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Tickets.routeName);
          }
        },
      ),
    );
  }
}
