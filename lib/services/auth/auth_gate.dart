// This is to check if the user is logged in or not.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home_page.dart';
import 'package:twitter_clone/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // user i logged in
            if (snapshot.hasData) {
              return const HomePage();
            }

            // user is NOT logged in
            return const LoginOrRegister();
          }),
    );
  }
}
