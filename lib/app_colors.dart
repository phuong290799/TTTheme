import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _appConstant =AppColors._internal();

  factory AppColors() {
    return _appConstant;
  }

 AppColors._internal();
  static const Color primary = Color(0xffffffff);
  static const Color BACKGROUND = Color(0xffFFC700);

  static const Color Scaffor = Color(0xffffffff);
}