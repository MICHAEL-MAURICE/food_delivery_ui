import 'package:flutter/material.dart';
import 'package:flutterfooddelivery/src/Pages/Favoritepage.dart';
import 'package:flutterfooddelivery/src/Pages/Homepage.dart';
import 'package:flutterfooddelivery/src/Pages/Orderpage.dart';
import 'package:flutterfooddelivery/src/Pages/Profilepage.dart';

class Main_screen extends StatefulWidget {
  @override
  _Main_screenState createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  int curretIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  Homepage homescreen;
  Orderpage orderpage;
  Favoritepage favoritepage;
  ProfilePage profilepage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homescreen = Homepage();
    orderpage = Orderpage();
    favoritepage = Favoritepage();
    profilepage = ProfilePage();
    pages = [homescreen, orderpage, favoritepage, profilepage];
    currentPage = homescreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              curretIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: curretIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Orders"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favorite"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ]),
      body: currentPage,
    );
  }
}
