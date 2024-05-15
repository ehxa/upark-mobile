import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool _isDarkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.49),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.brightness_6_rounded,
            ),
          ),
          const SizedBox(width: 16.0),
          const Text('Dark theme'),
        ],
      ),
      value: _isDarkThemeEnabled,
      onChanged: (value) {
        setState(() {
          _isDarkThemeEnabled = value;
        });
      },
      activeTrackColor: Colors.white70,
      inactiveTrackColor: Colors.white70,
      activeColor: Theme.of(context).colorScheme.secondary,
      inactiveThumbColor:
          Theme.of(context).colorScheme.secondary.withOpacity(0.49),
    );
  }
}
