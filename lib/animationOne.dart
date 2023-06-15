import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationOne extends StatefulWidget {
  const AnimationOne({super.key});

  @override
  State<AnimationOne> createState() => _AnimationOneState();
}

class _AnimationOneState extends State<AnimationOne> {
// AnimatedAlign Widget
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
