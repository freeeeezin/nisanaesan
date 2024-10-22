import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nisanaesan/screen/w_userType.dart';

import '../../common/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: InkWell(
                onTap: () => print('hello'),
                child: Container(
                  width: 500, // 가로 길이
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('hello')),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () => print('대여하기'),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '대여 하기',
                              style: TextStyle(fontSize: 20, fontFamily: 'monospace'),
                            ),
                        Text('남은 갯수 : 3개')
                      ])),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(


                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () => print('hi'),
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          '반납 하기',
                          style: TextStyle(fontSize: 20, fontFamily: 'monospace'),
                        )),
                      ),
                    ),
                  ),

              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () => print('오늘의 날씨'),
                child: Container(
                  width: 500, // 가로 길이
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('오늘의 날씨')),
                ),
              ),
            ),
          ],
        ));
  }
}
