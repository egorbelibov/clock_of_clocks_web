import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart';
import 'styles.dart';

class ClockFrame extends StatefulWidget {
  @override
  _ClockFrameState createState() => _ClockFrameState();
}

class _ClockFrameState extends State<ClockFrame> {
  DeviceType _deviceType;
  double _deviceWidth;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _updateDeviceInfo();
    return _renderClock();
  }

  void _updateDeviceInfo() {
    _deviceType = subscribeToDeviceType(context);
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
  }

  Widget _renderClock() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: clockFramePadding(_deviceType),
        width: clockFrameWidth(_deviceType, _deviceWidth),
        height: clockFrameHeight(_deviceType, _deviceHeight),
        child: FittedBox(
          alignment: Alignment.bottomLeft,
          fit: BoxFit.contain,
            child: Image.asset(
              'assets/images/lenovo_clock.png',
            ),
        ),
      ),
    );
  }
}
