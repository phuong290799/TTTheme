import 'package:flutter/material.dart';
import 'package:flutter_theme/UI/categoryItems.dart';
import 'package:flutter_theme/app_colors.dart';
import 'package:flutter_theme/app_theme.dart';
class CategoryHome extends StatefulWidget {
  String name;
  String image;
  String keyy;
  bool isSelect;
  CategoryHome({required this.name, required this.image, required this.isSelect,required this.keyy});

  @override
  _CategoryHomeState createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  @override
  void initState() {
    // TODO: implement initState

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          setState(() {
            widget.isSelect= !widget.isSelect;
          });
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryItems(name: widget.name)));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(widget.image),
            ),
            Text(
              widget.name,
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
        color: widget.isSelect?AppColors.BACKGROUND:AppColors.Scaffor,
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
  }
}
