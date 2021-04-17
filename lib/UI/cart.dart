import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
import 'package:flutter_theme/models/cartObj.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartObj> _listData = [CartObj( 'assets/images/mham.png',2.00, "Buffalo Burgers", 1),
    CartObj('assets/images/mtao.png',1.50,"Mango", 1),
    CartObj( 'assets/images/mpiza.png',5.57,"Sicilian Pizza", 1 )];


  int countitems = 3;
  late double total=0;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0; i<_listData.length;i++){
      total+=_listData[i].price*_listData[i].count;
    }
  }
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
            Text('Cart', style: AppThemes.Text20Bold),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child:
                      Text('Confirm your order', style: AppThemes.Text18Medium),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Opacity(
                      opacity: 0.6,
                      child:
                          Text('$countitems items', style: AppThemes.Text18Medium)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 195,
                decoration: BoxDecoration(
                    color: AppColors.Scaffor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 18,
                        offset: Offset(1, 2),
                      )
                    ]),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Winter Sale",
                            style: AppThemes.Text14Medium,
                          ),
                          Text(
                            "20% OFF",
                            style: AppThemes.Text20Bold,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            child: Center(
                                child: Text(
                              "win20sa",
                              style: TextStyle(
                                  fontSize: 20, color: AppColors.BACKGROUND),
                            )),
                            decoration: BoxDecoration(
                              color: AppColors.colorcontainer,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/images/splash.png",
                        height: 90,
                        width: 80,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 1, color: AppColors.BACKGROUND)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.Scaffor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 0,
                      offset: Offset(0, 0), // Shadow position
                    ),
                  ],
                ),
                height: 300,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  //scrollDirection: Axis.vertical,
                  itemCount: _listData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                     //   crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 73,
                            width: 73,
                            child: Container(child: Image.asset(_listData[index].image),),
                            decoration: BoxDecoration(
                              color: AppColors.colorcontainer,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _listData[index].name,
                                  style: AppThemes.Text16,
                                ),
                                Text("\$"+
                                 '${ _listData[index].price}',
                                  style: AppThemes.Text18Bold,
                                ),

                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          //  SelectFruits(),
                          Container(
                              height: 73,
                              width: 30,
                              decoration: BoxDecoration(
                                color: AppColors.colorcontainer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                      ),
                                      onTap: (){
                                        setState(() {
                                          _listData[index].count++;
                                          total+=_listData[index].price;
                                        });
                                      },
                                    ),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: AppColors.Scaffor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Text('${_listData[index].count}'),
                                  Container(
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.minimize,
                                        size: 15,
                                      ),
                                      onTap: (){
                                        setState(() {
                                            _listData[index].count--;
                                            total-=_listData[index].price;
                                        });
                                      },
                                    ),
                                    height: 20,
                                    width: 20,
                                    decoration: new BoxDecoration(
                                      color: AppColors.Scaffor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: 73,
                      decoration: BoxDecoration(
                        color: AppColors.Scaffor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0,
                            offset: Offset(0, 0), // Shadow position
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: AppThemes.Text20Medium,
                    ),
                    Text(
                      '$total',
                      style: AppThemes.Text18Bold,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 360,
                child: RaisedButton(
                  onPressed: () {},
                  color: AppColors.BACKGROUND,
                  child: Text(
                    "Buy",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
