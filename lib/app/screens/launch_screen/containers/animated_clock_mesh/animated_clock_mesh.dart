import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';

import 'containers/animated_analog_clock.dart';

class AnimatedClockMesh extends StatefulWidget {
  @override
  _AnimatedClockMeshState createState() => _AnimatedClockMeshState();
}

/// A 4x4 Grid of [AnimatedAnalogClock]'s
class _AnimatedClockMeshState extends State<AnimatedClockMesh> {
  Timer _timer;
  final Map<int, Map<int, double>> clockMeshState = {
    0: {
      0: 0,
      1: pi / 2,
    },
    1: {
      0: pi * 3 / 2,
      1: 0,
    },
    2: {
      0: pi,
      1: pi / 2,
    },
    3: {
      0: pi * 3 / 2,
      1: pi,
    }
  };

  @override
  void initState() {
    super.initState();
    _updateState();
  }

  void _updateState() {
    _timer = Timer(Duration(milliseconds: 500), () {
      _updateState();
      _updateClockMeshState();
    });
  }

  double _randomAngle() {
    return Random().nextDouble() + Random().nextInt(7);
  }

  void _updateClockMeshState() {
    setState(() {
      clockMeshState.forEach((clockIndex, clock) {
        clock.forEach((handIndex, _) {
          clockMeshState[clockIndex][handIndex] = _randomAngle();
        });
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: _renderClocks(),
      ),
    );
  }

  List<Widget> _renderClocks() {
    List<Widget> clockWidgets = [];
    clockMeshState.forEach((_, handAngles) {
      clockWidgets.add(AnimatedAnalogClock(clockHandAngles: handAngles));
    });
    return clockWidgets;
  }
}
