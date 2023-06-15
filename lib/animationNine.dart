import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationNine extends StatefulWidget {
  const AnimationNine({super.key});

  @override
  State<AnimationNine> createState() => _AnimationNineState();
}

class _AnimationNineState extends State<AnimationNine> {
  // AnimatedSize Widget
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _size = _size == 300 ? 100 : 300;
        });
      },
      child: Container(
        color: Colors.blueGrey,
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: Duration(seconds: 1),
          child: FlutterLogo(
            size: _size,
          ),
        ),
      ),
    );
  }
}
