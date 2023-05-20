/// called by main function

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inventree/screens/auth_screens/login_or_register_page.dart';
import 'package:inventree/widgets/navbar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),

        /// THIS IS CONSTANTLY GOING TO CHECK IF THE USER IS SIGNED IN OR NOT
        builder: (context, snapshot) {
          /// IF the user is logged in
          if (snapshot.hasData) {
            return const NavBarScreen();
          } else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
