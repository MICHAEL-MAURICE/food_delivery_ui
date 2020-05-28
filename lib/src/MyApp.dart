import 'package:flutter/material.dart';
import 'package:flutterfooddelivery/src/Screens/Main_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "food Delevery app",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Main_screen(),
    );
  }
}
