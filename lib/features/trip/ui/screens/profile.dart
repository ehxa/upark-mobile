import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../components/custom_switch.dart';
import '../components/dash_divider.dart';
import '../components/screen_title.dart';
import '../components/subtitle.dart';
import 'change_password.dart';
import 'favourites.dart';
import 'home.dart';
import 'profile_settings.dart';
import 'sign_in.dart';
import 'tickets.dart';

class Profile extends StatelessWidget {
  static String routeName = '/profile';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(title: 'My Profile'),
              const SizedBox(height: 20),
              const Text(
                'João Fernandes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                '0167873902',
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 20),
              const Subtitle(subtitle: 'Account Details'),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.49),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.settings,
                  ),
                ),
                title: const Text('Profile settings'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white70,
                ),
                onTap: () {
                  Navigator.pushNamed(context, ProfileSettings.routeName);
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.49),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.lock_rounded,
                  ),
                ),
                title: const Text('Change password'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white70,
                ),
                onTap: () {
                  Navigator.pushNamed(context, ChangePassword.routeName);
                },
              ),
              const CustomSwitch(),
              const SizedBox(height: 20),
              const DashDivider(),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.logout_rounded),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushNamed(context, SignIn.routeName);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.highlight_remove_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  'Deactivate account',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  Navigator.pushNamed(context, SignIn.routeName);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 1) {
            Navigator.pushNamed(context, Favourites.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Tickets.routeName);
          }
        },
      ),
    );
  }
}
