import 'package:flutter/material.dart';
import 'package:flutterfooddelivery/src/Models/Food_model.dart';
import 'package:flutterfooddelivery/src/Widgets/Food_bought.dart';
import 'package:flutterfooddelivery/src/Widgets/Food_category.dart';
import 'package:flutterfooddelivery/src/Widgets/Home_top_info.dart';
import 'package:flutterfooddelivery/src/Widgets/Search_bar.dart';
import 'package:flutterfooddelivery/src/data/Food_data.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Food> _foods = Foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          children: <Widget>[
            Home_top_info(),
            Food_category(),
            SizedBox(
              height: 20.0,
            ),
            Search_bar(),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Frequently Bought Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: _foods.map(Build_Food_bought).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget Build_Food_bought(Food foods) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.0),
      child: Food_bought(
        id: foods.id,
        name: foods.name,
        image_Path: foods.image_Path,
        rating: foods.rating,
        price: foods.price,
        category: foods.category,
        discout: foods.discout,
      ),
    );
  }
}
