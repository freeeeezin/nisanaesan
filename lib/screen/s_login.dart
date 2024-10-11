import 'package:flutter/material.dart';
import 'package:nisanaesan/path.dart';
import 'package:nisanaesan/core/theme/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar_login(),
        backgroundColor: mainColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Image.asset(
                    'assets/images/rive/usan.png',
                    width: 100,
                    height: 100,
                  )),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {},
                  child: Image.asset('$imagePath/k_m.png', width: 600)),
              TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    '$imagePath/google_3x.png',
                    width: 185,
                  )),
            ],
          ),
        ));
  }
}
