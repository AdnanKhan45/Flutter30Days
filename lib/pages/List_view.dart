import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(FontAwesome.heart_o),
            leading: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            title: Text("David"),
            subtitle: Text("Hey What's up!"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart_o),
            leading: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            title: Text("Dude"),
            subtitle: Text("Hey What's up!"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart_o),
            leading: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            title: Text("Savage"),
            subtitle: Text("Hey What's up!"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart_o),
            leading: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            title: Text("David"),
            subtitle: Text("Hey What's up!"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart_o),
            leading: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            title: Text("David"),
            subtitle: Text("Hey What's up!"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                "Lorem Ipsum ... some thing like a boss compilation xD xD wtf heheh if i were u and u were me i would forget u jese tu ho ek surang mein uske end mein tujko roshni dekhi that's how i see u"),
          ),
          Container(
            width: 80,
            height: 80,
            decoration:
                BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle),
          ),
          Text(
              "Lorem Ipsum ... some thing like a boss compilation xD xD wtf heheh if i were u and u were me i would forget u jese tu ho ek surang mein uske end mein tujko roshni dekhi that's how i see u"),
        ],
      ),
    );
  }
}
