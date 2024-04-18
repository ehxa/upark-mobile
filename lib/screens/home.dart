import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../components/round_btn.dart';
import '../components/vehicle_selection_row.dart';
import 'favourites.dart';
import 'notifications.dart';

class Home extends StatelessWidget {
  static String routeName = '/home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Home Screen',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: RoundButton(
                  label: 'Skip',
                  dstRoute: routeName,
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                ),
              ),
              Expanded(
                flex: 2,
                child: RoundButton(
                  label: 'Next',
                  dstRoute: routeName,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const VehicleSelectionRow()
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, Favourites.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Notifications.routeName);
          }
        },
      ),
    );
  }
}
