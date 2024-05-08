import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'parking.dart';
import 'profile.dart';
import 'tickets.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';

  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _usernameText = "";
  String _passwordText = "";

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(() {
      setState(() {
        _usernameText = _usernameController.text;
      });
    });
    _passwordController.addListener(() {
      setState(() {
        _passwordText = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Home Screen',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: RoundButton(
          //         label: 'Skip',
          //         dstRoute: routeName,
          //         foregroundColor: Theme.of(context).colorScheme.onSurface,
          //         backgroundColor: Theme.of(context).colorScheme.surface,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: RoundButton(
          //         label: 'Next',
          //         dstRoute: routeName,
          //         foregroundColor: Theme.of(context).colorScheme.onSecondary,
          //         backgroundColor: Theme.of(context).colorScheme.secondary,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, Parking.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Tickets.routeName);
          } else if (index == 3) {
            Navigator.pushNamed(context, Profile.routeName);
          }
        },
      ),
    );
  }
}
