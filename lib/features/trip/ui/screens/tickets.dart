import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'home.dart';
import 'parking.dart';
import 'profile.dart';

class Tickets extends StatelessWidget {
  static String routeName = '/tickets';

  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Tickets Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 1) {
            Navigator.pushNamed(context, Parking.routeName);
          } else if (index == 3) {
            Navigator.pushNamed(context, Profile.routeName);
          }
        },
      ),
    );
  }
}
