import 'package:flutter/material.dart';

class AppThemes {
  static final AppThemes _appConstant =AppThemes._internal();

  factory AppThemes() {
    return _appConstant;
  }

  AppThemes._internal();

  static const TextStyle text1 = TextStyle(
      fontSize: 24, color: Color(0xff292929));
  static const TextStyle text5 = TextStyle(
      fontSize: 16, color: Color(0xff545454));
  static const TextStyle text16b = TextStyle(
      fontSize: 16, color: Color(0xff292929),fontWeight: FontWeight.bold);
  static const TextStyle text2 = TextStyle(
      fontSize: 24, color: Color(0xffFFFFFF));
  static const TextStyle text20 = TextStyle(
      fontSize: 20, color: Color(0xff292929));
  static const TextStyle text14= TextStyle(
      fontSize: 14, color: Color(0xff292929));

  static const double paddingSmall = 8.0;
  static const double padding10 = 10.0;
  static const double paddingDefault = 16.0;
  static const double paddingMedium = 20.0;
  static const double paddingLarge = 24.0;
  static const double padding32 = 32.0;
  static const double heightButton = 50.0;
  static const double borderRadiusBtn = 12;
  static const double heightBannerAdmob = 65.0;
  static const double heightItemLetter = 40.0;
}