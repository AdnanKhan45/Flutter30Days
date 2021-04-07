
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Image page"),
      ),
      body: Center(
        child: Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Image.asset("assets/flutter.png"),
        ),
      ),
    );
  }
}
