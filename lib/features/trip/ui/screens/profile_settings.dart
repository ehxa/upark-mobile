import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  static String routeName = '/profilesettings';

  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'PROFILE SETTINGS',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text('Modify your details'),
            const SizedBox(height: 10.0),
            const Text('Full Name'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'João Fernandes',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('Email Address'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'joaofernandes@gmail.com',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('Phone Number'),
            const TextField(
              decoration: InputDecoration(
                hintText: '(+351) 965437644',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                //  handle save button press
              },
              child: const Text(
                'SAVE CHANGES',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
