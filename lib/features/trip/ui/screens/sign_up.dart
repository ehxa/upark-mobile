import 'package:flutter/material.dart';

import '../components/round_btn.dart';
import '../components/round_input.dart';
import 'home.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  static String routeName = '/signup';

  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _pwdConfController = TextEditingController();
  String _userTxt = "";
  String _pwdTxt = "";
  String _pwdConfTxt = "";

  @override
  void initState() {
    super.initState();
    _userController.addListener(() {
      setState(() {
        _userTxt = _userController.text;
      });
    });
    _pwdController.addListener(() {
      setState(() {
        _pwdTxt = _pwdController.text;
      });
    });
    _pwdConfController.addListener(() {
      setState(() {
        _pwdConfTxt = _pwdConfController.text;
      });
    });
  }

  @override
  void dispose() {
    _userController.dispose();
    _pwdController.dispose();
    _pwdConfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            child: Column(
              children: [
                Text(
                  "U-Park",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                RoundInput(
                  label: 'Username',
                  controller: _userController,
                  icon: Icons.person_rounded,
                ),
                const SizedBox(height: 20.0),
                RoundInput(
                  label: 'Password',
                  controller: _pwdController,
                  icon: Icons.lock_rounded,
                ),
                const SizedBox(height: 20.0),
                RoundInput(
                  label: 'Confirm password',
                  controller: _pwdConfController,
                  icon: Icons.lock_rounded,
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: RoundButton(
                    label: "SIGN UP",
                    dstRoute: Home.routeName,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignIn.routeName);
                      },
                      child: const Text(
                        "Click here.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
