import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class AnimationTwo extends StatefulWidget {
  const AnimationTwo({super.key});

  @override
  State<AnimationTwo> createState() => _AnimationTwoState();
}

class _AnimationTwoState extends State<AnimationTwo>
    with TickerProviderStateMixin {
  // AnimatedBuilder Widget
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 10))
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
