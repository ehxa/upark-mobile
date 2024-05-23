import 'package:flutter/material.dart';

import '../screens/park_details.dart';

class ParkCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ParkCard({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ParkDetails.routeName,
          arguments: {
            'imageUrl': imageUrl,
            'name': name,
          },
        );
      },
      child: SizedBox(
        width: 150.0,
        height: 100.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
