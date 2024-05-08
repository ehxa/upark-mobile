import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  static String routeName = '/profilesettings';

  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Profile Settings Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
