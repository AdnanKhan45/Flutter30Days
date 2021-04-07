
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum properties { x, y }

class SimpleAnimationExample extends StatelessWidget {
  final _tween = TimelineTween<properties>()
    ..addScene(begin: 0.seconds, duration: 1.seconds)
        .animate(properties.x, tween: (-200.0).tweenTo(100.0))
    ..addScene(begin: 1.seconds, duration: 1.seconds)
        .animate(properties.y, tween: (-100.0).tweenTo(100.0))
    ..addScene(begin: 2.seconds,duration: 1.seconds)
        .animate(properties.x,tween: (100.0).tweenTo(-100.0))
    ..addScene(begin: 3.seconds,duration: 1.seconds)
        .animate(properties.y,tween: (100.0).tweenTo(-100.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoopAnimation<TimelineValue<properties>>(
          tween: _tween,
          duration: Duration(seconds: 4),
          builder: (context, child, value) {
            return Transform.translate(
              offset: Offset(value.get(properties.x),value.get(properties.y)),
              child: Center(
                child: Container(width: 150,height: 150,child: Image.asset("assets/flutter_2.png")),
              ),
            );
          },
        ),
      ),
    );
  }
}


// enum properties { x, y }
//
// class ImplicitAnimationExample extends StatelessWidget {
//   final _tween = TimelineTween<properties>()
//     ..addScene(begin: 0.seconds, duration: 1.seconds)
//         .animate(properties.x, tween: (-200.0).tweenTo(100.0))
//     ..addScene(begin: 1.seconds, duration: 1.seconds)
//         .animate(properties.y, tween: (-100).tweenTo(100));
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: LoopAnimation<TimelineTween<properties>>(
//           tween: _tween,
//           duration: _tween.duration,
//           builder: (context, child, value) {
//             return Transform.translate(
//               offset: Offset(),
//               child: Container(
//                   width: 120,
//                   height: 120,
//                   child: Image.asset("assets/flutter_2.png")),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
