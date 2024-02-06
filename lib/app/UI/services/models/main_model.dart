import 'package:debolsillo_app/app/UI/screens/home_menu_screens.dart';
import 'package:debolsillo_app/app/UI/services/models/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//import '../pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeMenuScreen();
            } else {
              return const AuthModel();
            }
          }),
    );
  }
}
