import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  static String routeName = '/booking';

  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: Text(
          'Booking Screen',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
