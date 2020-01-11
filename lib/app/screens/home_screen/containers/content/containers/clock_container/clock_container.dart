import 'package:flutter/widgets.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart';
import '../../components/clock_launcher/clock_launcher.dart';
import '../clock_of_clocks/clock_of_clocks/lib/web_main.dart';
import 'styles.dart';

class ClockContainer extends StatefulWidget {
  @override
  _ClockContainerState createState() => _ClockContainerState();
}

class _ClockContainerState extends State<ClockContainer> {
  ClockOfClocks clock;
  DeviceType _deviceType;
  double _deviceWidth;
  double _deviceHeight;

  bool launcherIsLoading = true;

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
    clock ??= ClockOfClocks();

    return _transformedContainer(
      child: _decoratedScreenContainer(
        backgroundColor: Color(0xFF000000),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              child: child,
              scale: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeOutSine,
                ),
              ),
            );
          },
          child: launcherIsLoading
              ? ClockLauncher(onFinished: () {
                  setState(() => launcherIsLoading = false);
                })
              : clock,
        ),
      ),
    );
  }

  Widget _decoratedScreenContainer({
    @required Color backgroundColor,
    @required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: child,
      ),
    );
  }

  Widget _transformedContainer({@required Widget child}) {
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
                top: 315,
                bottom: 335,
                right: 185,
              ),
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.skew(0.23, 0.20)
                  ..add(Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(-0.20)
                    ..rotateY(-0.25)
                    ..rotateZ(-0.25)),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
