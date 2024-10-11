import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nisanaesan/path.dart';
import 'package:nisanaesan/core/theme/theme.dart';
import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart';

import '../core/utils/constant.dart';

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
              BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    switch(state.status){
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

                      SizedBox(
                        height: 25,
                      ),

                      TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            '$imagePath/google_3x.png',
                            width: 185,
                          )),

                      SizedBox(
                        height: 25,
                      ),

                      TextButton(
                    onPressed: () => context.read<UserBloc>().add(UserLogin()),
                    child: Image.asset('$imagePath/k_m.png', width: 600)),

                    ],
                    );


                    case Status.loading:
                    return Center(
                    child: CircularProgressIndicator(),
                    );

                    case Status.success:
                    return Center(
                    child: Text('success'),
                    );

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
