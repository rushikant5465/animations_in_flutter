import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationTen extends StatefulWidget {
  const AnimationTen({super.key});

  @override
  State<AnimationTen> createState() => _AnimationTenState();
}

class _AnimationTenState extends State<AnimationTen> {
  // AnimatedSwitcher Widget
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: Text(
              '$count',
              style: TextStyle(fontSize: 40),
              key: ValueKey(count),
            ),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count += 1;
                });
              },
              child: Text('Add'))
        ],
      ),
    );
  }
}
