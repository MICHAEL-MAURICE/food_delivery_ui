import 'package:flutter/material.dart';

class Home_top_info extends StatelessWidget {
  final KTex_top_style = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(" What Whould \n You Like to Eat?", style: KTex_top_style)
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
