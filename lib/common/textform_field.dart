
import 'package:flutter/material.dart';

class CommonInputDecoration {

  static InputDecoration getDecoration({String? hintText,  TextStyle? hintStyle,  String? counterText}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // 둥근 모서리
        borderSide: BorderSide(color: Colors.grey, width: 2), // 일반 상태 테두리
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // 둥근 모서리
        borderSide: BorderSide(color: Colors.blue, width: 4), // 포커스 상태 테두리
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // 둥근 모서리
        borderSide: BorderSide(color: Colors.grey, width: 2), // 활성 상태 테두리

      ),
      hintText: hintText,

    );
  }
}