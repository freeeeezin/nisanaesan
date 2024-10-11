import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nisanaesan/firebase_options.dart';
import 'package:nisanaesan/presentation/main/bloc/user_bloc/user_bloc.dart';
import 'package:nisanaesan/screen/splash/splash_screen.dart';
import 'package:nisanaesan/core/theme/theme.dart';

import 'dependency_injection.dart';

void main() async{
  configureDependencies();
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
      title: '니산내산',
      theme:themeData(),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen()
    )
    );
  }
}

