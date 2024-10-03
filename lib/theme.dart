import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xFF3C5A91);


TextTheme textTheme() {
  return TextTheme();
}

AppBarTheme appBarTheme(){
  return AppBarTheme();
}

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(

    ),
    appBarTheme: appBarTheme()
  );
}