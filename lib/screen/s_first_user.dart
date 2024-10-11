import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:nisanaesan/screen/s_login.dart';
import 'package:velocity_x/velocity_x.dart';


import '../core/theme/theme.dart';

class FirstUserScreen extends StatefulWidget {
  const FirstUserScreen({super.key});

  @override
  State<FirstUserScreen> createState() => _FirstUserScreenState();
}

class _FirstUserScreenState extends State<FirstUserScreen> {

  final TextEditingController _txtcontroller = TextEditingController();

  @override
  void dispose() {
    _txtcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: appBar(),
        body:
        Center(
          child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 200),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                    }, child:
                    '이용자'.text.size(25).color(mainColor).make(),
                        style:
                      ElevatedButton.styleFrom(
                        minimumSize: Size(200, 75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)
                          )
                        )
                    ),
                    SizedBox(height: 45,),
                    ElevatedButton(onPressed: (){}, child:
                    '관리자'.text.size(25).color(mainColor).make(),
                        style:
                        ElevatedButton.styleFrom(
                            minimumSize: Size(200, 75),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11)
                            )
                        )
                    ),

                
                
                  ],
                ),
              ),
          
          
          ),
        ));
  }
}
