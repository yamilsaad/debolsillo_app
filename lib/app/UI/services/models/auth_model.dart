import 'package:debolsillo_app/app/UI/screens/login_screens.dart';
import 'package:debolsillo_app/app/UI/screens/register_screens.dart';
import 'package:flutter/material.dart';

class AuthModel extends StatefulWidget {
  const AuthModel({super.key});

  @override
  State<AuthModel> createState() => _AuthModelState();
}

class _AuthModelState extends State<AuthModel> {
  // initielly, show the login page
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(showRegisterPage: toggleScreens);
    } else {
      return RegisterScreen(showLoginPage: toggleScreens);
    }
  }
}
