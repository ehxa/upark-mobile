import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  static String routeName = '/booking';

  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Booking Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
