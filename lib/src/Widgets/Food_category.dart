import 'package:flutter/material.dart';
import 'package:flutterfooddelivery/src/Models/Category_model.dart';
import 'package:flutterfooddelivery/src/Widgets/Food_card.dart';
import 'package:flutterfooddelivery/src/data/Category_data.dart';

class Food_category extends StatelessWidget {
  final List<Category_model> _categories = Categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Food_card(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
