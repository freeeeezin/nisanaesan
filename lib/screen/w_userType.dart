import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nisanaesan/common/textform_field.dart';

import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart';
import 'package:nisanaesan/screen/home/s_home.dart';

import '../common/theme/theme.dart';
import '../common/utils/constant.dart';

class UserType extends StatefulWidget {
  const UserType({super.key});

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: appBar(),
      body: Column(
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              switch (state.userType) {
                // 로그인 전
                case Usertype.none:
                  return Container();

                // 관리자로 로그인
                case Usertype.admin:
                  return const AdminWidget();

                // 사용자로 로그인
                case Usertype.user:
                  return const UserWidget();
              }
            },
          )
        ],
      ),
    );
  }
}

//관리자 모드로 로그인시
class AdminWidget extends StatefulWidget {
  const AdminWidget({super.key});

  @override
  State<AdminWidget> createState() => _AdminWidgetState();
}

class _AdminWidgetState extends State<AdminWidget> {
  PageController _pageController = PageController();
  final List<TextEditingController> _txtcontrollers = List.generate(
    3, // 페이지 수에 맞게 생성
    (index) => TextEditingController(),
  );
  int _currentPage = 0;

  //응답 리스트
  List<String> responses = ['', '', ''];

  //질문 리스트
  List<String> request = [
    '우산 대여 서비스를 사용하는\n 기관(부서)명을 입력해주세요',
    '대여할 수 있는 우산 개수를\n 입력해주세요',
    '기관 비밀번호를 입력해주세요'
  ];

  void _goToNextPage() {
    if (_currentPage < 2) {
      // 페이지 수에 맞게 조정
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage += 1;
      });
    }
  }

  void _save() {
    print('save');
    for (int i = 0; i < _txtcontrollers.length; i++) {
      print("Page $i Value: ${_txtcontrollers[i].text}");
    }
    Get.off(HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: PageView.builder(
            itemCount: 3,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    request[index],
                    style: TextStyle(fontSize: 24, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  if (index < request.length - 1) // 1,2번째 질문들
                    TextFormField(
                      controller: _txtcontrollers[index],
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                      decoration: CommonInputDecoration.getDecoration(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) => _goToNextPage(),
                      onChanged: (value) {
                        responses[index] = value;
                      },
                    )
                  else // 마지막 질문(비밀번호)
                    TextFormField(
                      maxLength: 4,
                      // 4자리 제한
                      obscureText: true,
                      // 입력한 내용을 점으로 표시
                      keyboardType: TextInputType.number,
                      // 숫자 키패드 표시
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(fontSize: 50, color: Colors.white),
                      onFieldSubmitted: (value) => _save(),
                      decoration: CommonInputDecoration.getDecoration(
                          counterText: '',
                          hintText: '••••',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 50)),
                      onChanged: (value) {
                        responses[index] = value; // 입력된 값을 저장
                      },
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  if (_currentPage >= 2)
                    ElevatedButton(
                        onPressed: () {
                          _save();
                          Get.off(HomeScreen());
                        },
                        child: Text('완료'))
                ]),
              );
            }));
  }
}

//사용자 모드로 로그인시
class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
          TextFormField(
            maxLength: 4,
            // 4자리 제한
            obscureText: true,
            // 입력한 내용을 점으로 표시
            keyboardType: TextInputType.number,
            // 숫자 키패드 표시
            textAlign: TextAlign.center,
            textInputAction: TextInputAction.done,
            style: TextStyle(fontSize: 50, color: Colors.white),
            // onFieldSubmitted: (value) => _save(),
            decoration: CommonInputDecoration.getDecoration(
                counterText: '',
                hintText: '••••',
                hintStyle:
                TextStyle(color: Colors.white, fontSize: 50)),

          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: () {
              },
              child: Text('입장하기'))
        ],
      ),
    );
  }
}
