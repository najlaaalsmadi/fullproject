import 'package:flutter/material.dart';

class ThemeClass {
  Color lightPrimaryColor = Colors.white24;
  Color darkPrimaryColor = Colors.black54;
  Color appBardarkPrimaryColor = Colors.transparent;
  Color appBarLightPrimaryColor = Colors.transparent;
  Color? secondaryLightColor = Colors.black;
  Color? secondaryDarkColor = Colors.white;
  Color? accentColor = Colors.grey[300];

  static ThemeData ligthTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: _themeClass.appBarLightPrimaryColor, // Set the app bar color to match the primary color
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: _themeClass.appBarLightPrimaryColor, // Set the app bar color to match the primary color
    ),
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.secondaryLightColor
    ),
    // primarySwatch?: Colors.black54,
  );
  static ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: _themeClass.appBardarkPrimaryColor, // Set the app bar color to match the primary color
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: _themeClass.appBarLightPrimaryColor, // Set the app bar color to match the primary color
      ),
      primaryColor: ThemeData.dark().scaffoldBackgroundColor,
      colorScheme: ColorScheme.dark().copyWith(
          primary: _themeClass.darkPrimaryColor,
          secondary: _themeClass.secondaryDarkColor
      ));
}

ThemeClass _themeClass = ThemeClass();