import 'package:flutter/material.dart';

import '../components/round_btn.dart';
import '../components/round_input.dart';
import 'home.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  static String routeName = '/signin';

  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                  controller: _usernameController,
                  icon: Icons.person_rounded,
                ),
                const SizedBox(height: 20.0),
                RoundInput(
                  label: 'Password',
                  controller: _passwordController,
                  icon: Icons.lock_rounded,
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: RoundButton(
                    label: "LOG IN",
                    dstRoute: Home.routeName,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New user? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUp.routeName);
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
