import 'package:flutter/material.dart';

Color mainColor = const Color(0xFF3C5A91);


TextTheme textTheme() {
  return TextTheme();
}

AppBar appBar (){
  return AppBar(
    title: Image.asset('assets/images/rive/usan.png', scale: 8,),
  );


}

AppBarTheme appBarTheme(){
  return AppBarTheme(
    color: mainColor
  );
}

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(

    ),
    appBarTheme: appBarTheme()
  );
}