// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationFour extends StatefulWidget {
  const AnimationFour({super.key});

  @override
  State<AnimationFour> createState() => _AnimationFourState();
}

class _AnimationFourState extends State<AnimationFour> {
  // AnimatedCrossFade Widget
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: Text(
              'switch',
              style: TextStyle(color: Colors.white),
            )),
        AnimatedCrossFade(
          firstChild: Image.network(
              "https://images.unsplash.com/photo-1565772838491-cbeb32fac6ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80"),
          secondChild: Image.network(
              "https://images.unsplash.com/photo-1610552050890-fe99536c2615?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1507&q=80"),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        )
      ],
    );
  }
}
