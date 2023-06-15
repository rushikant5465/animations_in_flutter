import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationFive extends StatefulWidget {
  const AnimationFive({super.key});

  @override
  State<AnimationFive> createState() => _AnimationFiveState();
}

class _AnimationFiveState extends State<AnimationFive> {
  // AnimatedDefaultTextStyle Widget

  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: Text("Flutter"),
            )),
        TextButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: Text(' Switch'),
        )
      ],
    );
  }
}
