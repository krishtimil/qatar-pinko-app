import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#727272');

  static Color gray501 = fromHex('#979797');

  static Color gray400 = fromHex('#c2c2c2');

  static Color gray500 = fromHex('#a5a5a5');

  static Color blue800 = fromHex('#1160b0');

  static Color gray800 = fromHex('#444444');

  static Color blue600 = fromHex('#2d86e1');

  static Color bluegray100 = fromHex('#d4d4d4');

  static Color blue6007e = fromHex('#7e2d86e1');

  static Color bluegray900 = fromHex('#373737');

  static Color teal300 = fromHex('#4098c6');

  static Color yellow500 = fromHex('#f3eb2c');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#3472a1');

  static Color bluegray901 = fromHex('#303030');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
