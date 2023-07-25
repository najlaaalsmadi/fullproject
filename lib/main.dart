import 'package:flutter/material.dart';
import 'package:task1_register/Auth.dart';
import 'package:task1_register/start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task1_register/theme.dart';


void main() async{
  WidgetsFlutterBinding();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.ligthTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      // Set the dark theme
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
