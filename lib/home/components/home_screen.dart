import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task1_register/theme.dart';
import 'body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: ThemeClass.ligthTheme,
        darkTheme: ThemeClass.darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Body(),
      // بناء هيكل الشاشة
       // استدعاء الفئة المسؤولة عن جسم الشاشة
    ),
    );
  }
}
