import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF6160AB), shape: BoxShape.circle),
            padding: const EdgeInsets.all(16),
            child: const Text(
              'A',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text('Available'),
        ]),
        Row(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFFF8A934), shape: BoxShape.circle),
            padding: const EdgeInsets.all(16),
            child: const Text(
              'S',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text('Selected'),
        ]),
      ],
    );
  }
}
