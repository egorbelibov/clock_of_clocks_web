import 'package:flutter/widgets.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart';
import 'styles.dart';

class ClockTable extends StatefulWidget {
  @override
  _ClockTableState createState() => _ClockTableState();
}

class _ClockTableState extends State<ClockTable> {
  DeviceType _deviceType;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _updateDeviceInfo();
    return _renderClockTable();
  }

  void _updateDeviceInfo() {
    _deviceType = subscribeToDeviceType(context);
    _deviceHeight = MediaQuery.of(context).size.height;
  }

  Widget _renderClockTable() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.infinity,
        height: clockTableHeight(_deviceType, _deviceHeight),
        child: Image.asset(
          'assets/images/clock_table.png',
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
