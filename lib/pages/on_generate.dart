import 'package:flutter/material.dart';
import 'package:flutter_app/domain/entity/grid_view.dart';
import 'package:flutter_app/domain/entity/list_view_builder.dart';
import 'package:flutter_app/domain/entity/page_view_example.dart';
import 'package:flutter_app/pages/List_view.dart';
import 'package:flutter_app/pages/day10_animations/basic_animations.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/nevigations.dart';
import 'package:flutter_app/pages/sign_up.dart';

import 'day10_animations/animation_builder_example.dart';
import 'day10_animations/implicit_animation_example.dart';
import 'day10_animations/simple_animations.dart';
import 'day11/animated_drawer.dart';
import 'day11/simple_material_drawer.dart';

class OnGenerateRoutes {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    if (settings.name == "/") {
      return MaterialPageRoute(builder: (_) => AnimatedDrawerExample());
    } else if (settings.name == "/login") {
      return MaterialPageRoute(builder: (_) => login_page());
    } else if (settings.name == "/signup") {
      return MaterialPageRoute(builder: (_) => SignUpPage());
    } else if (settings.name == "/homePage") {
      if (args is UserData) {
        return MaterialPageRoute(builder: (_) => home(userData: args,));
      } else {
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 200,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))),
                        child: Text(
                          "Something went wrong!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        );
      }
    } else {
      return MaterialPageRoute(
        builder: (_) =>
            Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "Wrong path Error!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    }
  }
}