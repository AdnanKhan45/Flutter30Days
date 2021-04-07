import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicAnimations extends StatefulWidget {
  @override
  _BasicAnimationsState createState() => _BasicAnimationsState();
}

class _BasicAnimationsState extends State<BasicAnimations>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);

    final curveAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeInCubic, reverseCurve: Curves.easeInToLinear);

    _animation =
        Tween<double>(begin: 5, end: 10).animate(curveAnimation)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });
    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Animations"),
      ),
      body: Transform.scale(
        scale: _animation.value,
        // angle: _animation.value,
        // offset: Offset(_animation.value, _animation.value),
        child: Center(
          child: Container(
              width: 150,
              height: 150,
              child: Icon(FontAwesomeIcons.heart)),
        ),
      ),
    );
  }
}
