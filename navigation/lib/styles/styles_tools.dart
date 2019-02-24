import 'package:flutter/material.dart';

class StylesTools {
  static Color hexToColor(String code) {
    var colorToInt = int.parse(code.substring(0, 6), radix: 16);
    var colorResult = Color(colorToInt + 0xFF000000);
    return colorResult;
  }
}