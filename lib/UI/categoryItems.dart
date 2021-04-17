import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
import 'package:flutter_theme/models/categoryObj.dart';
import 'package:flutter_theme/models/itemObj.dart';

class CategoryItems extends StatefulWidget {
  String name;
  CategoryItems({required this.name});
  @override
  _CategoryItemsState createState() => _CategoryItemsState(name: name);
}

class _CategoryItemsState extends State<CategoryItems> {
  String name;
  _CategoryItemsState({required this.name});

  List<ItemObj> _listitem = [
    ItemObj("Strawberries", 'assets/images/dau.png', 2.00, "1 lb"),
    ItemObj("Pineapple", 'assets/images/dua.png', 1.0, "each"),
    ItemObj("Dragon Fruit", 'assets/images/tll.png', 4.40, "Average 0.78 lb"),
    ItemObj("Blueberries", 'assets/images/nho.png', 5.57, "1 lb"),
    ItemObj("Lychee", 'assets/images/vai.png', 7.88, "1 lb"),
    ItemObj("Mango", 'assets/images/tao.png', 1.05, "each"),
    ItemObj("Strawberries", 'assets/images/tao.png', 3.00, "1 lb"),
    ItemObj("Strawberries", 'assets/images/tao.png', 3.00, "1 lb")
  ];

  List<ItemObj> _listitem2 = [
    ItemObj('Pizza1', 'assets/images/pizza.png', 1.2, "100g"),
    ItemObj('Pizza2', 'assets/images/pizza.png', 1.2, "100g"),
    ItemObj('Pizza3', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Pizza4', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Pizza5', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Pizza6', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Pizza7', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Pizza8', 'assets/images/burger.png', 1.2, "100g"),
  ];
  List<ItemObj> _listitem3 = [
    ItemObj('Burger1', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger2', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger3', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger4', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger5', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger6', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger7', 'assets/images/burger.png', 1.2, "100g"),
    ItemObj('Burger8', 'assets/images/burger.png', 1.2, "100g"),
  ];

  List<Color> _colors = [
    Color(0xffFFE3E5),
    Color(0xffFFFBD8),
    Color(0xffFFEEFE),
    Color(0xffDFE0FB),
    Color(0xffD8FFD0),
    Color(0xffFFE08E),
    Color(0xffFFE3E5),
    Color(0xffFFE3E5),
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
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.coloricon,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.BACKGROUND,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Text(widget.name, style: AppThemes.Text20Bold),
              SizedBox(),
            ],
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              child: Image.asset('assets/images/cart2.png'),
              decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                        'What ' + widget.name + ' you would\nlike to order?',
                        style: AppThemes.Text16Bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: AppColors.Scaffor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 52,
                          width: 250,
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: "Search Food",
                                hintStyle: AppThemes.Text14,
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                            width: 52,
                            decoration: BoxDecoration(
                              color: AppColors.BACKGROUND,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Image.asset('assets/images/adjust.png')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20, top: 35, right: 20),
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: _colors.length,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            itemBuilder: (BuildContext context, int index) => new Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name.toString()=="Fruit"?
                        _listitem[index].name:_listitem2[index].name,
                        style: AppThemes.Text14Medium,
                      ),
                      Text(widget.name.toString()=="Fruit"?
                        _listitem[index].weight:_listitem2[index].weight,
                        style: AppThemes.Text14,
                      ),
                      Text(widget.name.toString()=="Fruit"?
                        "\$" + '${_listitem[index].price}': "\$" + '${_listitem2[index].price}',
                        style: AppThemes.Text16Bold,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  widget.name.toString()=="Fruit"?
                  Image.asset(
                    _listitem[index].image,
                  ): Image.asset(
                    _listitem2[index].image,
                  ),
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
                      offset: Offset(4, 8),
                    )
                  ]),
            ),
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2.5 : 1.98),
          ),
        ));
  }

  drawer(BuildContext context) {}
}
