import 'package:flutter/material.dart';

class Myconstant {
  static String routeMainHome = '/mainHome';
  static String routeFindAPIkey = '/findApiKey';

  static String apiKey = 'VVOX8PCKBXGAHY3E2HKVJLTHDWSZH81M';
  static String siteId = '1598054';

  static Color primary = const Color(0xffd85c00);
  static Color dark = const Color(0xff9f2c00);
  static Color light = const Color(0xffff8c3a);

  TextStyle h1Style() => TextStyle(
        color: dark,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

      TextStyle h1WhiteStyle() => const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        color: dark,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

      TextStyle h2WhiteStyle() => const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  TextStyle h3Style() => TextStyle(
        color: dark,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

      TextStyle h3WhiteStyle() => const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );
}
