import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimationSix extends StatefulWidget {
  const AnimationSix({super.key});

  @override
  State<AnimationSix> createState() => _AnimationSixState();
}

class _AnimationSixState extends State<AnimationSix>
    with TickerProviderStateMixin {
  // AnimatedIcon Widget

  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _controller.forward();
            // forwards means take next image/stuff
            _isPlay = true;
          } else {
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}
