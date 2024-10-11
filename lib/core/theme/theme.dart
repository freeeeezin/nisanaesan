import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = const Color(0xFF3C5A91);

TextTheme textTheme(){
  return TextTheme(
    headlineMedium: GoogleFonts.openSans(fontSize: 18, color: Colors.black38),

  );
}

AppBar appBar (){
  return AppBar(
    title: Image.asset('assets/images/rive/usan.png', scale: 8,),
  );
}

AppBar appBar_login(){
  return AppBar(
    backgroundColor: mainColor,
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
    appBarTheme: appBarTheme()
  );
}