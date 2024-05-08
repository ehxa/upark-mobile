import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'home.dart';
import 'profile.dart';
import 'tickets.dart';

class Parking extends StatelessWidget {
  static String routeName = '/parking';

  const Parking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Parking Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Tickets.routeName);
          } else if (index == 3) {
            Navigator.pushNamed(context, Profile.routeName);
          }
        },
      ),
    );
  }
}
