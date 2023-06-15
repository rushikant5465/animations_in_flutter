import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationSeven extends StatefulWidget {
  const AnimationSeven({super.key});

  @override
  State<AnimationSeven> createState() => _AnimationSevenState();
}

class _AnimationSevenState extends State<AnimationSeven> {
  // AnimatedOpacity Widget
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 2),
            child: FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                },
              );
            },
            child: Text('Fade Logo'),
          )
        ],
      ),
    );
  }
}
