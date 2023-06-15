// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn_animations_flutter/animationEight.dart';
import 'package:learn_animations_flutter/animationFive.dart';
import 'package:learn_animations_flutter/animationFour.dart';
import 'package:learn_animations_flutter/animationNine.dart';
import 'package:learn_animations_flutter/animationOne.dart';
import 'package:learn_animations_flutter/animationSeven.dart';
import 'package:learn_animations_flutter/animationSix.dart';
import 'package:learn_animations_flutter/animationTen.dart';
import 'package:learn_animations_flutter/animationThree.dart';
import 'package:learn_animations_flutter/animationTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Flutter Animations")),
          backgroundColor: Colors.blueGrey),
      backgroundColor: Color.fromARGB(255, 57, 107, 130),
      body: AnimationOne(),
    ));
  }
}
