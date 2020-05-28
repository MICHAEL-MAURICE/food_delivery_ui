import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool Taggel = true;
  var icon = Icons.visibility_off;
  Widget _buildEmailTextfield() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Your Email Please or Username ",
          hintStyle: TextStyle(color: Color(0xffBDC2C8), fontSize: 18.0)),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildUsernameTextfield() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: " UserName ",
          hintStyle: TextStyle(color: Color(0xffBDC2C8), fontSize: 18.0)),
    );
  }

  Widget _buildPasswordTextfield() {
    return TextFormField(
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
      keyboardType: TextInputType.visiblePassword,
    );
  }

  Widget _buildConfirmPasswordTextfield() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Confirm Password",
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
      keyboardType: TextInputType.visiblePassword,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
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
                        _buildUsernameTextfield(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _buildPasswordTextfield(),
                        SizedBox(
                          height: 20.0,
                        ),
                        _buildConfirmPasswordTextfield()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Center(
                        child: Text(
                          "Sign Up",
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
                      "I have Already account",
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign in",
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
        ],
      ),
    );
  }
}
