import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUpPage extends StatelessWidget {
  final String data;

  const SignUpPage({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/flutter_2.png",
                width: 150,
                height: 150,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign up",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.google,
                size: 35,
              ),
              SizedBox(
                width: 18,
              ),
              FaIcon(
                FontAwesomeIcons.facebook,
                size: 35,
              ),
              SizedBox(
                width: 18,
              ),
              FaIcon(
                FontAwesomeIcons.linkedin,
                size: 35,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(2)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 2.5,
                      blurRadius: 1.5)
                ]),
            child: TextField(
              decoration:
                  InputDecoration(hintText: "Email", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(2)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 2.5,
                      blurRadius: 1.5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Username", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(2)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 2.5,
                      blurRadius: 1.5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 55),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Already have account? Login",
            style: TextStyle(color: Colors.blue, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
