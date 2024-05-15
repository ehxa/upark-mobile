import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String title;

  const ScreenTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onBackground,
        fontSize: 31,
        letterSpacing: 2,
      ),
    );
  }
}
