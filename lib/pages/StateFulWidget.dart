import 'package:flutter/material.dart';

class myStateFulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateFulWidget();
  }
}

class _StateFulWidget extends State<myStateFulWidget> {
  int value = 0;
  void increment() {
    setState(() {
      value += 1;
    });
  }
  void decrement() {
    setState(() {
      value -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidgetsExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter : $value",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: increment
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Icon(Icons.remove),
              onPressed: decrement
            ),
          ],
        ),
      ),
    );
  }
}
