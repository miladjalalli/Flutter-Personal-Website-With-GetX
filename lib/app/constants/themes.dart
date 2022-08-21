import 'package:flutter/material.dart';

class Themes {
  static ThemeData themeBlueOrange = ThemeData(
      primaryColor: Colors.lightBlue,
      primaryColorDark: Colors.blue,
      accentColor: Colors.orange);

  static ThemeData themeBlackOrange = ThemeData(
      primaryColor: Colors.black,
      primaryColorDark: Colors.black,
      accentColor: Colors.orange);

  static ThemeData themePurpleOrange = ThemeData(
      primaryColor:   Color(0XFF003140),
      primaryColorDark:   Color(0XFF003140),
      accentColor: Colors.orange);
  static ThemeData themeOrangeOrange = ThemeData(
      primaryColor:   Colors.orange,
      primaryColorDark: Colors.deepOrangeAccent,
      accentColor: Colors.orange);
}