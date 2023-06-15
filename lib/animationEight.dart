import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationEight extends StatefulWidget {
  const AnimationEight({super.key});

  @override
  State<AnimationEight> createState() => _AnimationEightState();
}

class _AnimationEightState extends State<AnimationEight> {
  // AnimatedPadding Widget

  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
          child: Text("Change Padding"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent),
        ),
        Text("Paddig = $padValue"),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 4,
            color: Colors.amberAccent,
          ),
        )
      ],
    );
  }
}
