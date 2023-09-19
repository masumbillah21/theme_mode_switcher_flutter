import 'package:flutter/material.dart';

class AppUtilities {
  static bool isLight = true;

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.pink,
    brightness: Brightness.dark,
  );
}
