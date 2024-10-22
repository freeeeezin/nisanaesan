import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nisanaesan/screen/s_login.dart';
import 'package:velocity_x/velocity_x.dart';

class WSurvey1 extends StatefulWidget {
  const WSurvey1({super.key});

  @override
  State<WSurvey1> createState() => _WSurvey1State();
}

class _WSurvey1State extends State<WSurvey1> {
  TextEditingController _text1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            '우산 대여 서비스를 사용하는 \n 기관(부서)명을 입력해주세요.'.text.size(25).color(Colors.white).make(),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: _text1,
            )),

          ],
        ),
      )
    );
  }
}


class WSurvey2 extends StatefulWidget {
  const WSurvey2({super.key});

  @override
  State<WSurvey2> createState() => _WSurvey2State();
}

class _WSurvey2State extends State<WSurvey2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class WSurvey3 extends StatefulWidget {
  const WSurvey3({super.key});

  @override
  State<WSurvey3> createState() => _WSurvey3State();
}

class _WSurvey3State extends State<WSurvey3> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




