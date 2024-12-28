import 'package:flutter/material.dart';

class Go {
  static void to(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static void back(BuildContext context) => Navigator.pop(context);
}