import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool _isDarkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Expanded(
          child: Text(
            'Dark theme',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isDarkThemeEnabled = !_isDarkThemeEnabled;
            });
          },
          child: Switch(
            value: _isDarkThemeEnabled,
            onChanged: (value) {
              setState(() {
                _isDarkThemeEnabled = value;
              });
            },
            activeTrackColor: Colors.white70,
            activeColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.49),
            inactiveTrackColor: Theme.of(context).colorScheme.background,
            inactiveThumbColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.49),
            trackOutlineWidth: MaterialStateProperty.all<double?>(
              1.0,
            ),
          ),
        ),
      ],
    );
  }
}
