import 'package:flutter/material.dart';
import 'package:flutter_app/domain/entity/fetch_it.dart';

class GridViewExample extends StatelessWidget {

  final data = ListData.dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.green,
            child: Column(
              children: [
                Container(width: 150, height: 150, child: Image.asset("${data[index].image}")),
                Text("${data[index].title}"),
              ],
            ),
          );
        }
      ),
    );
  }
}
