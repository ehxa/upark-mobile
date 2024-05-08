import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  static String routeName = '/changepassword';

  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Change Password Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
