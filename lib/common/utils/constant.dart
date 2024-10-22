
import 'package:flutter/cupertino.dart';

class Constants {
  static const String targetApiKey = 'TARGET';

  static EdgeInsets get horizontalPadding =>
      const EdgeInsets.symmetric(horizontal: 16);
}

enum Usertype { none,admin, user }

enum Status { initial, loading, success, error }
