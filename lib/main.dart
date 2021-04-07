import 'package:flutter/material.dart';
import 'package:flutter_app/pages/on_generate.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      title: "First application",
      initialRoute: "/",

      // routes: {
      //   "/": (context) => MyRoutes(),
      //   "/login": (_) => login_page(),
      //   "/singup": (_) => SignUpPage(),
      // },

      onGenerateRoute: OnGenerateRoutes.route

    );
  }
}
