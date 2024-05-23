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
  String? _errorMessage;

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

  void _signUp() {
    if (_pwdController.text != _pwdConfController.text) {
      setState(() {
        _errorMessage = "Passwords do not match.";
      });
    } else {
      setState(() {
        _errorMessage = null;
      });
      Navigator.pushNamed(context, Home.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                    passwordField: true,
                  ),
                  const SizedBox(height: 20.0),
                  RoundInput(
                    label: 'Confirm password',
                    controller: _pwdConfController,
                    icon: Icons.lock_rounded,
                    passwordField: true,
                  ),
                  if (_errorMessage != null)
                    Text(
                      _errorMessage!,
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                  const SizedBox(height: 20.0),
                  Center(
                    child: RoundButton(
                      label: "Sign Up",
                      dstRoute: Home.routeName,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondary,
                      onPressed: _signUp,
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
      ),
    );
  }
}
