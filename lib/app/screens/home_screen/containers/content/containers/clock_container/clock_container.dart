import 'package:flutter/widgets.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart';
import 'styles.dart';

class ClockContainer extends StatefulWidget {
  @override
  _ClockContainerState createState() => _ClockContainerState();
}

class _ClockContainerState extends State<ClockContainer> {
  DeviceType _deviceType;
  double _deviceWidth;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _updateDeviceInfo();
    return _renderClockContainer();
  }

  void _updateDeviceInfo() {
    _deviceType = subscribeToDeviceType(context);
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
  }

  Widget _renderClockContainer() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: clockContainerPadding(_deviceType),
        width: clockContainerWidth(_deviceType, _deviceWidth),
        height: clockContainerHeight(_deviceType, _deviceHeight),
        child: FittedBox(
          alignment: Alignment.bottomLeft,
          fit: BoxFit.contain,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 2000,
              height: 1439,
              padding: EdgeInsets.only(
                left: 575,
                top: 250,
                bottom: 300,
                right: 215,
              ),
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.skew(0.23, 0.20)
                  ..add(Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(-0.20)
                    ..rotateY(-0.25)
                    ..rotateZ(-0.25))
                  ..absolute(),
                child: Container(
                  width: 800,
                  height: 900,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Center(
                    child: Text('Hello World'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
