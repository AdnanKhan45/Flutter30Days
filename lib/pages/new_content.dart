
import 'package:flutter/material.dart';

class my_content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 80, height: 80, color: Colors.deepOrangeAccent,),
          Container(width: 80, height: 80, color: Colors.amberAccent,),
          Container(width: 80, height: 80, color: Colors.deepPurple,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 80, height: 80, color: Colors.deepOrangeAccent,),
              Container(width: 80, height: 80, color: Colors.amberAccent,),
              Container(width: 80, height: 80, color: Colors.deepPurple,),
            ],
          )
        ],
      ),
    );
  }
}
