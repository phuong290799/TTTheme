import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/UI/cart.dart';
import 'package:flutter_theme/UI/fruits.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
import 'package:flutter_theme/models/categoryObj.dart';
import 'package:flutter_theme/models/popular.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CategoryObj> _listData = [CategoryObj('Fruit','assets/images/imagevai.png', true),
    CategoryObj('Pizza', 'assets/images/pizza.png', false),
    CategoryObj('fruit', 'assets/images/burger.png', false),
    CategoryObj('Burger', 'assets/images/burger.png', false)];
  List<PopularObj> _listData2 =[PopularObj("Buffalo Burgers",'assets/images/ham.png',"2.50", "Weight 300g", true),
    PopularObj("Sicilian Pizza",'assets/images/piza.png',"2.50", "Weight 300g",false),
    PopularObj("Burger",'assets/images/vai.png',"2.50", "Weight 300g", false),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: AppColors.BACKGROUND,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/avata.png"),
                    Text(
                      "Jessie Tyler",
                      style: AppThemes.Text16Medium,
                    ),
                    Text(
                      "jessie tyler@gmail.com",
                      style: AppThemes.Text14Medium,
                    ),
                  ],
                ),
              )),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Cart",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.bookmark_border),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Orders",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Profile",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Address",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.payment),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Pay Method",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.videogame_asset_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My Vouchers",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.connect_without_contact),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Contact Us",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Setting",
                      style: AppThemes.Text16,
                    )
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Instants Eats', style: AppThemes.Text16),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset("assets/images/cart1.png"),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
            },
            child: Image.asset('assets/images/cart2.png'),
          ),

          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Image.asset('assets/images/khung.png')),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('What you would like \n to order?',
                      style: AppThemes.Text16Medium),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 52,
                  width: 325,
                  decoration: BoxDecoration(
                    color:AppColors.Scaffor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search Food",
                      labelStyle: AppThemes.Text14,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.search),
                      ),
                      suffixIcon: Container(
                        width: 52,
                          decoration: BoxDecoration(
                            color: AppColors.BACKGROUND,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),

                            ),
                          ),

                          child: Image.asset('assets/images/adjust.png')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppThemes.Text20Medium,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Opacity(
                        opacity: 0.7,
                        child: Text(
                          "See all",
                          style: AppThemes.Text14Bold,
                        ),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.all(11),
                  scrollDirection: Axis.horizontal,
                  itemCount: _listData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Fruits()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Image.asset(_listData[index].image),
                            ),
                            Text(
                              _listData[index].name,
                              style: AppThemes.Text14Medium,
                            ),
                            Container(
                              child: Icon(Icons.keyboard_arrow_right),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      width: 110,
                      decoration: BoxDecoration(
                        color: _listData[index].isSelected?AppColors.BACKGROUND:AppColors.Scaffor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            offset: Offset(0, 0), // Shadow position
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: AppThemes.Text20Medium,
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - 562),
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20, right: 20),
                //scrollDirection: Axis.vertical,
                itemCount: _listData2.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, bottom: 20),
                              child: Column(
                                children: [
                                  Text(
                                    _listData2[index].name,
                                    style: AppThemes.Text20Medium
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        _listData2[index].weight,
                                        style: AppThemes.Text14,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        _listData2[index].price,
                                        style: AppThemes.Text16Bold,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.BACKGROUND,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Icon(Icons.add),
                                width: 90,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(_listData2[index].image,)
                      ],
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    width: 322,
                    height: 171,
                    decoration: BoxDecoration(
                      color: AppColors.Scaffor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  drawer(BuildContext context) {}
}
