import 'package:flutter/material.dart';

class Colors {
  static Color black = Color.fromARGB(255, 0, 0, 0);
  static Color black87 = Color.fromARGB(alpha(0.87), 0, 0, 0);
  static Color black54 = Color.fromARGB(alpha(0.54), 0, 0, 0);
  static Color black38 = Colors.gray;
  static Color black12 = Color.fromARGB(alpha(0.12), 0, 0, 0);
  static Color white = Color.fromARGB(255, 255, 255, 255);
  static Color blue = Color.fromARGB(255, 74, 144, 226);
  static Color grayLightest = Color(0xFFFAFAFA);
  static Color gray = Color(0xFF9E9E9E);
  static Color deepBlue = Color.fromRGBO(1, 23, 116, 1.0);
  static Color lightOrange = Color.fromRGBO(247, 147, 30, 1.0);
  static Color aquaBlue = Color.fromRGBO(41, 171, 226, 1.0);

  static int alpha(double value) {
    return (255 * value).toInt();
  }
}
