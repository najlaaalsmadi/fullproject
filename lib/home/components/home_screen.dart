
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'body.dart';


class HomeScreen extends StatefulWidget {
  static String routeName="/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}
