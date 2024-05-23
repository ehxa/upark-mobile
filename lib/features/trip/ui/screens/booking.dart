import 'package:flutter/material.dart';

import '../components/caption.dart';
import '../components/floor_selector.dart';
import '../components/parking_lot.dart';
import '../components/screen_title.dart';
import '../components/subtitle.dart';

class Booking extends StatelessWidget {
  static String routeName = '/booking';

  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Padding(
        padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenTitle(title: 'Book a Spot'),
            SizedBox(height: 40),
            Subtitle(subtitle: 'Park Zones'),
            SizedBox(height: 20),
            FloorSelector(floorLabels: [0, -1, -2, -3]),
            SizedBox(height: 20),
            ParkingLot(),
            SizedBox(height: 20),
            Caption(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
