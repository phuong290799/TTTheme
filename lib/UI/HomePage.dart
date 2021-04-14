import 'package:flutter/material.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _listData = ["Fruits", "Pizza","Burger"];
  List<Color> _colors = [AppColors.BACKGROUND,AppColors.Scaffor, AppColors.Scaffor];
  List<Image> _listimage = [Image.asset('assets/images/imagevai.png'),Image.asset('assets/images/pizza.png'),Image.asset('assets/images/burger.png')];

  List<String> _listData2 = ["Fruits", "Pizza","Burger"];
  List<Color> _colors2 = [AppColors.Scaffor,AppColors.Scaffor, AppColors.Scaffor];
  List<Image> _listimage2 = [Image.asset('assets/images/ham.png'),Image.asset('assets/images/piza.png'),Image.asset('assets/images/vai.png')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Instants Eats',
          style: AppThemes.text20
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
                    style:AppThemes.text16b
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
      body:  Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",style: AppThemes.text20,),
                    TextButton(onPressed: (){}, child: Text("See all",style: AppThemes.text5,))
                  ],
                ),
              ),
          SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 178,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _listimage.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: _listimage[index],
                      ),
                      Text(_listData[index],style: AppThemes.text14,)
                      ,
                      Container(
                          child: Icon(Icons.keyboard_arrow_right),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: 110,
                  height: 178,
                    decoration: BoxDecoration(
                      color: _colors[index],
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
                    Text("Popular",style: AppThemes.text20,),
                  ],
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height-500),
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20,right: 20),
                        //scrollDirection: Axis.vertical,
                        itemCount: _listData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(_listData2[index],style: AppThemes.text20,),
                                    Text(_listData2[index],style: AppThemes.text16b,),
                                    Text(_listData2[index],style: AppThemes.text14,),

                                  ],
                                ),
                                _listimage2[index],
                              ],
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            width: 322,
                            height: 171,
                            decoration: BoxDecoration(
                              color: _colors2[index],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            alignment: ,
                          );
                        },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
