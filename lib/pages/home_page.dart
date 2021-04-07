import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/nevigations.dart';

class home extends StatelessWidget {

  final UserData userData;

  const home({this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter application"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 50),
          padding: EdgeInsets.only(top: 50, right: 10),
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
          ),
          child: Text(
            "username: ${userData.username}, userid : ${userData.userid}",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.amberAccent,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
