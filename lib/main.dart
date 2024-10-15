import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nisanaesan/firebase_options.dart';
import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart';
import 'package:nisanaesan/screen/splash/splash_screen.dart';
import 'package:nisanaesan/core/theme/theme.dart';

import 'dependency_injection.dart';

void main() async{
  configureDependencies();

  KakaoSdk.init(
      nativeAppKey: '1190742e9d4e75bd7d815f898b6b187d',
  );
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => getIt<UserBloc>()..add(UserLoginWithToken()))],
        
        child:
      MaterialApp(
      title: '우리우산',
      theme:themeData(),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen()
    )
    );
  }
}

