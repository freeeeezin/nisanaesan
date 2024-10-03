import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _txtcontroller = TextEditingController();

  @override
  void dispose() {
    _txtcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appBar(),
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Flexible(
              flex: 1,
                child: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons//square.svg',width: 50,height: 40,
                color: Colors.black38,))),
              Flexible(
                  flex:7 ,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Container(
                      height: 45,
                      child: TextField(
                        controller: _txtcontroller,
                        cursorColor: mainColor,
                        decoration: InputDecoration(
                          hintText: '역명 검색',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                          )
                        ),
                        onSubmitted: (String value){
                          print('$value');
                        },
                      ),
                    ),
                  )),
            ],
          )
        ],

      ));

  }
}
