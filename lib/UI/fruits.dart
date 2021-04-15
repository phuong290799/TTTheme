import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  List<String> _fruitname = ["Strawberries", "Pineapple","Dragon Fruit", "Blueberries","Lychee","Mango","Strawberries","Straberries"];
  List<String> _fruitweight = ["1 lb", "each", " Average 0.78 lb","1 lb","1 lb","each","1 lb","1 lb"];
  List<String> _fruitprice = ["2.00", "1.50", "5.57","4.40","7.88","1.05","2.00","2.00"];
  List<Color> _colors = [Color(0xffFFE3E5),Color(0xffFFFBD8),Color(0xffFFEEFE),
    Color(0xffDFE0FB),Color(0xffD8FFD0),Color(0xffFFE08E),Color(0xffFFE3E5),Color(0xffFFE3E5),

  ];

  List<Image> _listimage = [
    Image.asset('assets/images/dau.png'),
    Image.asset('assets/images/dua.png'),
    Image.asset('assets/images/tll.png'),
    Image.asset('assets/images/nho.png'),
    Image.asset('assets/images/vai.png',height: 100,),
    Image.asset('assets/images/tao.png'),
    Image.asset('assets/images/dau.png'),
    Image.asset('assets/images/tao.png'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Scaffor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.arrow_back_ios_rounded,color: AppColors.coloricon,),
                decoration: BoxDecoration(
                    color: AppColors.BACKGROUND,
                    borderRadius: BorderRadius.circular(15)
                ),),
            ),
            Text('Fruits', style: AppThemes.Text20Bold),
            SizedBox(),
          ],
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
              child: Image.asset('assets/images/cart2.png'),
          decoration: BoxDecoration(
            color: AppColors.gray,
            borderRadius: BorderRadius.circular(15)
          ),),
          SizedBox(width: 20,),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('What fruits you would\nlike to order?',
                      style: AppThemes.Text16Bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Material(
                  elevation: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search Fuits",
                      labelStyle: AppThemes.Text14,
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

        body:
        Container(
          padding: EdgeInsets.only(left: 20,top: 35,right: 20),
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: _colors.length,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            itemBuilder: (BuildContext context, int index) => new Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  Text(
                  _fruitname[index],
                  style: AppThemes.Text14Medium,
                ),
                  Text(
                   _fruitweight[index],
                    style: AppThemes.Text14,
                  ),

                  Text(
                    _fruitprice[index],
                    style: AppThemes.Text16Bold,
                  ),
                     _listimage[index],
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.BACKGROUND,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Icon(Icons.add),
                        width: 50,
                        height: 40,
                      ),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  color: _colors[index],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.gray,
                      blurRadius: 4,
                      offset: Offset(4,8),
                    )
                  ]

                ),),
            staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2.5 : 1.88),

          ),
        )

    );
  }

  drawer(BuildContext context) {}
}
