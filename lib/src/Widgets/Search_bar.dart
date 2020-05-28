import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
            hintText: "Search My Food",
            suffixIcon: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.circular(30.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            border: InputBorder.none),
      ),
    );
  }
}
