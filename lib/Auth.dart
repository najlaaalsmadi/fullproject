import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task1_register/home/components/home_screen.dart';
import 'package:task1_register/login.dart';
class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context,snapshot) {
              if(snapshot.hasData)
              {
                    return HomeScreen();
              }
              else
              {
               return Login();
              }
        }),
      ),
    );
  }
}
