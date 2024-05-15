import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../components/screen_title.dart';
import 'home.dart';
import 'profile.dart';
import 'tickets.dart';

class Favourites extends StatelessWidget {
  static String routeName = '/favourites';

  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Padding(
        padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
        child: ScreenTitle(title: 'Favourites'),
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
