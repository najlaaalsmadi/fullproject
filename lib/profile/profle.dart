
    import 'package:flutter/material.dart';
    import 'package:task1_register/Auth.dart';
import 'package:task1_register/profile/profilepage.dart';
    import 'package:task1_register/start.dart';
    import 'package:firebase_core/firebase_core.dart';
import 'package:task1_register/theme.dart';


    void main() async{
      WidgetsFlutterBinding();
      await Firebase.initializeApp();
      runApp(MyAppprofile());
    }

    class MyAppprofile extends StatelessWidget {
    const MyAppprofile({super.key});

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeClass.ligthTheme,
        darkTheme: ThemeClass.darkTheme,
        themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    home:profilepage(),
    );
    }
    }
