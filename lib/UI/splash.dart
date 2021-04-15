

import 'package:flutter/material.dart';
import 'package:flutter_theme/UI/HomePage.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
      });

    });
  }
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
                      Text("Instant",style: TextStyle(fontSize: 24,fontFamily: "Roboto_Bold",color: Colors.black),),
                      SizedBox(width: 7,),
                      Text("Eat",style: TextStyle(fontSize: 24,fontFamily: "Roboto_Bold",color: Colors.white)),
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
