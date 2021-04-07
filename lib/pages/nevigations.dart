import "package:flutter/material.dart";
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/sign_up.dart';

class UserData {
  final String username;
  final String userid;

  UserData(this.username, this.userid);
}

class MyRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(data: "Sign up",)));

                  Navigator.pushNamed(context, '/signup');
                },
                child: Text("Signup")),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => home(data: "Welcome back",)));

                Navigator.pushNamed(
                  context,
                  '/homePage',
                  arguments: UserData("eTechViral", "15"),
                );
              },
              child: Text("Home Page"),
            ),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
