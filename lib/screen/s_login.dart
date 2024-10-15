import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nisanaesan/path.dart';
import 'package:nisanaesan/core/theme/theme.dart';
import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/utils/constant.dart';
import 'home/s_home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        backgroundColor: mainColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    switch(state.status){


                    // 로그인 전 초기 상태.
                    case Status.initial:
                    return Column(
                    children: [
                    Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset(
                    'assets/images/rive/usan.png',
                    width: 100,
                    height: 100,
                    )),

                      SizedBox(height: 25,),

                      TextButton(
                          onPressed: () => (),
                          child: Image.asset(
                            '$imagePath/google_3x.png', //구글 로그인 버튼
                            width: 185,
                          )),

                      SizedBox(height: 25,),

                      TextButton(
                    onPressed: () => context.read<UserBloc>().add(UserLogin()),
                    child: Image.asset('$imagePath/k_m.png', // 카카오 로그인 버튼
                        width: 600)),

                    ],
                    );


                    // 로그인 중 로딩
                    case Status.loading:
                    return Center(
                    child: CircularProgressIndicator(),
                    );



                    // 로그인 성공시 화면
                    case Status.success:

                    return CheckUserType();


                    // 로그인 에러
                    case Status.error:
                    return Center(
                    child: Text('error'),
                    );



                    }
                  }
              ),
            ],
          ),
        ));
  }
}


class CheckUserType extends StatefulWidget {
  const CheckUserType({super.key});

  @override
  State<CheckUserType> createState() => _CheckUserTypeState();
}

class _CheckUserTypeState extends State<CheckUserType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){


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
        SizedBox(height: 80,),
        ElevatedButton(onPressed: (){

        }, child:
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
    );
  }
}







