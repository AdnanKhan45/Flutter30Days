import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class personalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children: [
          Center(
            child: FaIcon(FontAwesomeIcons.amazon, size: 100, color: Colors.red,),
          ),
          Container(width: 90, height: 80, color: Colors.deepOrange,),
          Expanded(child: Container(width: 90, height: 80, color: Colors.green,)),
        ],
      ),
    );
  }
}
