import 'package:flutter/material.dart';
import 'package:flutter_theme/UI/HomePage.dart';
import 'package:flutter_theme/UI/Splash.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.Scaffor,
        primaryColor: AppColors.primary,
          buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            buttonColor: Colors.white,
          )
      ),
      
      home: MyHomePage(),
      //home: Splash(),
    );
  }
}

