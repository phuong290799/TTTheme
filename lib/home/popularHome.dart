import 'package:flutter/material.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class PopularHome extends StatelessWidget {
  String name,image,price,weight;
  double star;
  bool isSelect;
  PopularHome({required this.name,required this.image,required this.price,required this.star,required this.weight,required this.isSelect});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 00),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        SizedBox(height: 20,),
                        Image.asset('assets/images/crown.png'),
                        Text("Top of the week",style: AppThemes.Text14,),
                      ],

                    ),
                    SizedBox(height: 17,),
                    Text(
                        name,
                        style: AppThemes.Text20Medium
                    ),
                    Row(
                      children: [
                        Text(
                          weight,
                          style: AppThemes.Text14,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("\$"+
                            price,
                          style: AppThemes.Text16Bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
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
                    SizedBox(width: 22,),
                    Row(
                      children: [
                        Image.asset('assets/images/star.png'),
                        Text("$star",style: AppThemes.Text14Bold,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Image.asset(image,)
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
  }
}
