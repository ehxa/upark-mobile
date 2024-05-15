import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String subtitle;

  const Subtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle.toUpperCase(),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onBackground,
        fontSize: 14,
        letterSpacing: 2,
      ),
    );
  }
}
