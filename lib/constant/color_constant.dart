import 'package:flutter/material.dart';

class ColorConstant {
  static ColorConstant _instance;
  static ColorConstant get instance {
    if (_instance != null) return _instance;
    _instance = ColorConstant._init();
    return _instance;
  }

  ColorConstant._init();

  final Color backgroundColor = Color.fromRGBO(255, 75, 58, 2);
}
