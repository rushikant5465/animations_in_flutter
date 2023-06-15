import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationThree extends StatefulWidget {
  const AnimationThree({super.key});

  @override
  State<AnimationThree> createState() => _AnimationThreeState();
}

class _AnimationThreeState extends State<AnimationThree> {
  // AnimatedContainer Widget
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
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 200.0 : 100.0,
          color: selected ? Colors.blueGrey : Color.fromARGB(255, 11, 139, 203),
          alignment: selected ? Alignment.topCenter : Alignment.bottomCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
