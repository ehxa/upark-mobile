import 'package:flutter/material.dart';
import 'package:smart_park/features/trip/ui/components/round_btn.dart';

import '../components/screen_title.dart';
import '../components/subtitle.dart';
import 'profile.dart';

class ProfileSettings extends StatelessWidget {
  static String routeName = '/profilesettings';

  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: 'João Fernandes');
    final TextEditingController emailController =
        TextEditingController(text: 'joaofernandes@gmail.com');
    final TextEditingController phoneController =
        TextEditingController(text: '+351 965437644');

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenTitle(title: 'My Profile'),
            const SizedBox(height: 40.0),
            const Subtitle(subtitle: 'Profile Settings'),
            const SizedBox(height: 10.0),
            const Text('Modify your details'),
            const SizedBox(height: 20.0),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                Expanded(
                  child: RoundButton(
                      label: 'Save Changes',
                      dstRoute: Profile.routeName,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
