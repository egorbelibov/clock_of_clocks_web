import 'dart:math';

import 'package:flutter/widgets.dart';

import '../../../../../g_styles/colors.dart';
import '../../../../../g_styles/gradients.dart';
import 'components/clock_hand/clock_hand.dart';

/// Simple Analog Clock that repeatingly animates all of its hands.
class AnimatedAnalogClock extends StatelessWidget {
  final Map<int, double> clockHandAngles;

  AnimatedAnalogClock({this.clockHandAngles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: themeBasedColor(context, PaletteColor.secondaryColor),
          width: 1,
        ),
        gradient: primaryGradient(context),
      ),
      child: Stack(
        children: _renderClockHands(),
      ),
    );
  }

  List<Widget> _renderClockHands() {
    List<Widget> clockHandWidgets = [];

    clockHandAngles.forEach((_, angle) {
      clockHandWidgets.add(_renderClockHand(angle));
    });

    return clockHandWidgets;
  }

  Widget _renderClockHand(double angle) {
    final angleTween = Tween<double>(begin: pi * 3 / 2, end: angle);
    return TweenAnimationBuilder(
      curve: Curves.elasticOut,
      duration: const Duration(milliseconds: 3000),
      tween: angleTween,
      child: Align(
        alignment: Alignment.centerRight,
        child: ClockHand(),
      ),
      builder: (_, angle, child) {
        return Transform.rotate(
          angle: angle,
          child: child,
        );
      },
    );
  }
}
