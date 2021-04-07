

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimationBuilderExample extends StatefulWidget {
  @override
  _AnimationBuilderExampleState createState() => _AnimationBuilderExampleState();
}

class _AnimationBuilderExampleState extends State<AnimationBuilderExample> with SingleTickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);

    final curveAnimation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInCubic,
        reverseCurve: Curves.easeInToLinear);

    _animation = Tween<double>(begin: 5, end: 50).animate(curveAnimation)
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
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _animation.value),
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                child: Icon(FontAwesomeIcons.heart, size: 80,),
              ),
            ),
          );
        },
      ),
    );
  }
}
