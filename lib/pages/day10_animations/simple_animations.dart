import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedWidgetExample extends StatefulWidget {
  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with SingleTickerProviderStateMixin {
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

    _animation = Tween<double>(begin: 5, end: 10).animate(curveAnimation)
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
      body: ImageAnimatedWidget(animation: _animation,),
    );
  }
}

class ImageAnimatedWidget extends AnimatedWidget {
  final Animation<double> animation;

  ImageAnimatedWidget({this.animation}) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Transform.scale(
      scale: animation.value,
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          child: Icon(FontAwesomeIcons.heart),
        ),
      ),
    );
  }
}
