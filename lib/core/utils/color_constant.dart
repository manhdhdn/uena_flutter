import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryColor = fromHex('F48820');
  static Color favColor = fromHex('F0635A');
  static Color purplePayment = fromHex('666A82');
  static Color blueUp = fromHex('3F48CC');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}