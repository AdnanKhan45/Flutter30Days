

import 'package:flutter/material.dart';
import 'package:flutter_app/domain/entity/fetch_it.dart';

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Example"),
      ),
      body: PageView.builder(itemCount: ListData.dataList.length, itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white60,
          ),
          child: Center(child: Text("Page ${ListData.dataList[index].title}")),
        );
      },),
    );
  }
}
