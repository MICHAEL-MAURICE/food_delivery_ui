import 'package:flutter/material.dart';
import 'package:flutterfooddelivery/src/Pages/Sign_up_page.dart';
import 'package:flutterfooddelivery/src/Screens/Main_screen.dart';

class Sign_in extends StatefulWidget {
  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  bool Taggel = true;
  var icon = Icons.visibility_off;
  Widget _buildEmailTextfield() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Your Email Please or Username ",
          hintStyle: TextStyle(color: Color(0xffBDC2C8), fontSize: 18.0)),
    );
  }

  Widget _buildPasswordTextfield() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Color(0xffBDC2C8), fontSize: 18.0),
          suffixIcon: IconButton(
              icon: Icon(icon),
              onPressed: () {
                setState(() {
                  Taggel == false
                      ? icon = Icons.visibility_off
                      : icon = Icons.visibility;
                  Taggel = !Taggel;
                });
              })),
      obscureText: Taggel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgettig password?",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextfield(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextfield()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_screen()));
                },
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )),
            Divider(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffBDC2C8),
                      fontSize: 18.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign_up()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
