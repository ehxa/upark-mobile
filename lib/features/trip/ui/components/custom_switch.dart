import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final Function(bool) onThemeChanged;
  final bool isLightTheme;

  const CustomSwitch(
      {super.key, required this.onThemeChanged, required this.isLightTheme});

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  late bool _isDarkThemeEnabled;

  @override
  void initState() {
    super.initState();
    _isDarkThemeEnabled = widget.isLightTheme;
  }

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
            'Light theme',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isDarkThemeEnabled = !_isDarkThemeEnabled;
              widget.onThemeChanged(_isDarkThemeEnabled);
            });
          },
          child: Switch(
            value: _isDarkThemeEnabled,
            onChanged: (value) {
              setState(() {
                _isDarkThemeEnabled = value;
                widget.onThemeChanged(value);
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
