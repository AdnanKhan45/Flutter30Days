import 'package:flutter/material.dart';
import 'package:flutter_app/domain/entity/fetch_it.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ListViewBuilderExample extends StatelessWidget {
  final data = ListData.dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          separatorBuilder: (context,  index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.3),
              ),
              child: Text("Separated"),
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 45,
                width: 45,
                child: Image.asset("${data[index].image}"),
              ),
              title: Text("${data[index].title}"),
              trailing: Icon(FontAwesome.heart_o),
            );
          }),
    );
  }
}
