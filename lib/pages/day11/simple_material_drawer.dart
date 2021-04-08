import 'package:flutter/material.dart';

class SimpleMaterialDrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                accountName: Text(
                  "clever programmer",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text("clever907@gmail.com"),
                currentAccountPicture: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.supervised_user_circle,
                    size: 20.0,
                  ),
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
            ),
            _drawerItem(title: "Activities", iconData: Icons.add_shopping_cart),
            _drawerItem(title: "Settings", iconData: Icons.settings),
            _drawerItem(title: "Social", iconData: Icons.supervised_user_circle),
            _drawerItem(title: "Draft", iconData: Icons.drafts_outlined),
            _drawerItem(title: "History", iconData: Icons.history),
            _drawerItem(title: "Trash", iconData: Icons.restore_from_trash),
          ],
        ),
      ),
      body: Column(
        children: [_header()],
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.lightBlue,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text(
                  "Flutter",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Icon(Icons.notifications_active)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawerItem({String title, IconData iconData}) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 16),),
      leading: Icon(iconData),
    );
  }

}
