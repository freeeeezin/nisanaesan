import 'package:flutter/material.dart';
import 'package:nisanaesan/screen/splash/splash_screen.dart';
import 'package:nisanaesan/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '니산내산',
      theme:themeData(),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen()
    );
  }
}

