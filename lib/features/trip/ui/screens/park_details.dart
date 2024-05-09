import 'package:flutter/material.dart';

class ParkDetails extends StatelessWidget {
  static String routeName = '/parkdetails';

  const ParkDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Park Details Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
