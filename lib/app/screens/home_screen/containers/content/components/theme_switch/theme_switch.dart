import 'dart:math';

import 'package:clock_of_clocks_website/app/g_state/theme_essentials.dart';
import 'package:flutter/material.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/spaces.dart';
import '../../../../../../g_wrapper/custom_cursor.dart';

class ThemeSwitch extends StatefulWidget {
  @override
  _ClockFrameState createState() => _ClockFrameState();
}

const lightThemePrimaryColor = Color(0xFF000000);
const darkThemePrimaryColor = Color(0xFFFFFFFF);

class _ClockFrameState extends State<ThemeSwitch> {
  ThemeEssentials _themeState;
  Brightness _brightness;

  void _updateThemeBrightness() {
    if (isLightTheme(_brightness)) {
      setState(() => _brightness = Brightness.dark);
      _themeState.brightness = Brightness.dark;
    } else {
      setState(() => _brightness = Brightness.light);
      _themeState.brightness = Brightness.light;
    }
  }

  @override
  void initState() {
    super.initState();
    _themeState = PropertyChangeProvider.of<ThemeEssentials>(
      context,
      listen: false,
    ).value;
    _brightness = _themeState.brightness;
    assert(_themeState != null);
  }

  @override
  Widget build(BuildContext context) {
    return _renderSwitch();
  }

  Widget _renderSwitch() {
    final primaryColor = isLightTheme(_brightness)
        ? lightThemePrimaryColor
        : darkThemePrimaryColor;

    final rotationAngle = isLightTheme(_brightness) ? 0 : pi;
    final rotationAngleTween = Tween<double>(
      begin: 0,
      end: rotationAngle,
    );

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: topScreenPadding,
          left: 20,
        ),
        child: TweenAnimationBuilder(
          tween: rotationAngleTween,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          builder: (_, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: child,
            );
          },
          child: CustomCursor(
            cursorStyle: CustomCursor.pointer,
            child: GestureDetector(
              onTap: () => _updateThemeBrightness(),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3,
                    color: primaryColor,
                  ),
                ),
                child: _halfCircle(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _halfCircle() {
    return FractionallySizedBox(
      alignment: Alignment.centerRight,
      widthFactor: 0.50,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(13.5),
            bottomRight: Radius.circular(13),
          ),
          color: Color(0xFF000000),
        ),
      ),
    );
  }
}
