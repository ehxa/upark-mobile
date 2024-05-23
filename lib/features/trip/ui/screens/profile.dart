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
  final Function(bool) onThemeChanged;
  final bool isLightTheme;

  const Profile({
    super.key,
    required this.onThemeChanged,
    required this.isLightTheme,
  });

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
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        shape: BoxShape.circle),
                    padding: const EdgeInsets.all(16),
                    child: const Icon(
                      Icons.person_rounded,
                      size: 48,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'João Fernandes',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '0167873902',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Subtitle(subtitle: 'Account Details'),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
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
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'Profile settings',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ProfileSettings.routeName);
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
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
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'Change password',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ChangePassword.routeName);
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomSwitch(
                  onThemeChanged: onThemeChanged, isLightTheme: isLightTheme),
              const SizedBox(height: 40),
              const DashDivider(),
              const SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignIn.routeName);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(Icons.logout_rounded),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignIn.routeName);
                    },
                    child: Text('Logout',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignIn.routeName);
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.highlight_remove_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Deactivate account',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ],
                ),
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
