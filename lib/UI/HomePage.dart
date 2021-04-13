import 'package:flutter/material.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Instants Eats',
          style: AppThemes.text3
        ),
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/cart1.png'),
        actions: <Widget>[
          Image.asset('assets/images/cart2.png'),
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Image.asset('assets/images/khung.png')),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'What you would like \n to order?',
                    style:AppThemes.text4
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Material(
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search Food",
                      labelStyle:AppThemes.text5,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.search),
                      ),
                      suffixIcon: Container(
                          color: AppColors.BACKGROUND,
                          child: Image.asset('assets/images/adjust.png')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body:  Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: AppThemes.text3,),
                  TextButton(onPressed: (){}, child: Text("See all",style: AppThemes.text5,))
                ],
              ),
            ),
        SingleChildScrollView(
          child: Container(
            height: 178,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: 110,
                height: 178,
                  decoration: BoxDecoration(
                    color: AppColors.BACKGROUND,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
              );
            },
      ),
          ),
        ),
            Container(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",style: AppThemes.text3,),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: 322,
                      height: 132,
                      decoration: BoxDecoration(
                        color: AppColors.BACKGROUND,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
    );
  }
}
