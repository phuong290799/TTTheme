

import 'package:flutter/material.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(123, 306, 122, 360),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/splash.png',width: 145,height: 130,),
              SizedBox(
                height: 31,
              ),
          Container(
                  child: Row(
                    children: [
                      Text("Instant",style: AppThemes.text1,),
                      SizedBox(width: 7,),
                      Text("Eat",style: AppThemes.text2,),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
