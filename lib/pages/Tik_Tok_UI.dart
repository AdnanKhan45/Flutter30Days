import 'package:flutter/material.dart';

class TikTokUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 14,
            right: 14,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close),
                Row(
                  children: [
                    Icon(Icons.music_note),
                    Text("Sound"),
                  ],
                ),
                Column(
                  children: [Icon(Icons.filter), Text("Flip")],
                )
              ],
            ),
          ),
          Positioned(
            right: 8,
            top: 94,
            child: Column(
              children: [
                Icon(Icons.speed),
                Text("Speed"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.beach_access_outlined),
                Text("Beauty"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.workspaces_filled),
                Text("Filters"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.av_timer_sharp),
                Text("Time"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.flash_auto),
                Text("Flash"),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 15,
            left: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(Icons.image_sharp),
                    ),
                    Text("Effects"),
                  ],

                ),
                Container(
                  width: 80,
                  height: 80,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(38))
                  ),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.black, width: 1.5)
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(Icons.upload_file),
                    ),
                    Text("Upload"),
                  ],

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
