import 'package:flutter/material.dart';

class Food_card extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;
  Food_card({this.imagePath, this.numberOfItems, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 300.0,
                width: 65.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    categoryName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text('$numberOfItems kinds')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
