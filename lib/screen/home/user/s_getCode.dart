import 'package:flutter/material.dart';
import 'package:nisanaesan/core/theme/theme.dart';

class GetCodeScreen extends StatefulWidget {
  const GetCodeScreen({super.key});

  @override
  State<GetCodeScreen> createState() => _GetCodeScreenState();
}

class _GetCodeScreenState extends State<GetCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: appBar(),
      body: Center(
        child: ElevatedButton(onPressed: (){}, child: Text('받은 코드입력하기')),
      ),
    );
  }
}
