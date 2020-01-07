import 'package:flutter/widgets.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import '../g_models/device_type.dart';

const double desktopBigMinWidth = 1500;
const double desktopBigMinHeight = 800;

const double desktopMinWidth = 1110;
const double desktopMinHeight = 700;

const double mobileMinWidth = 370;
const double mobileMinHeight = 600;

const double mobileMiniWidth = 0;
const double mobileMiniHeight = 0;

/// Subscribes [context.widget] to changes from Device.
///
/// Every time a new value is notified, [context.widget]
/// will be re-built.
DeviceType subscribeToDeviceType(BuildContext context) {
  return PropertyChangeProvider.of<Device>(context, listen: true)
      .value
      .deviceType;
}

/// Holds and updates listening widgets about current [DeviceType].
///
/// Measured by [deviceWidth] & [deviceHeight].
class Device extends PropertyChangeNotifier<Device> {
  double _deviceWidth = 0;
  double _deviceHeight = 0;

  /// Determined by the [deviceWidth] and [deviceHeight] of the [Device].
  DeviceType deviceType = DeviceType.desktop;

  double get deviceWidth => _deviceWidth;
  set deviceWidth(double newWidth) {
    if ((newWidth == deviceWidth) ||
        (!_isBigDifference(newWidth, _deviceWidth))) {
      return; // Not worth updating...
    } else {
      _deviceWidth = newWidth;
      _determineDeviceType();
    }
  }

  get deviceHeight => _deviceHeight;
  set deviceHeight(double newHeight) {
    if ((newHeight == _deviceHeight) ||
        (!_isBigDifference(newHeight, _deviceHeight))) {
      return; // Not worth updating...
    } else {
      _deviceHeight = newHeight;
      _determineDeviceType();
    }
  }

  bool _isBigDifference(double x, double y) {
    if (x > 500) {
      return (y - x).abs() > 100;
    } else {
      // Make it more precise when on lower values
      return (y - x).abs() > 25;
    }
  }

  void _determineDeviceType() {
    if ((deviceWidth > desktopBigMinWidth)) {
      if ((deviceHeight > desktopBigMinHeight)) {
        _updateDeviceType(DeviceType.desktopBig);
      } else {
        _updateDeviceType(DeviceType.mobile);
      }
      return;
    } else if ((deviceWidth > desktopMinWidth)) {
      if ((deviceHeight > desktopBigMinHeight)) {
        _updateDeviceType(DeviceType.desktop);
      } else {
        _updateDeviceType(DeviceType.mobile);
      }
      return;
    } else if ((deviceWidth > mobileMinWidth)) {
      if ((deviceHeight > mobileMinHeight)) {
        _updateDeviceType(DeviceType.mobile);
      } else {
        _updateDeviceType(DeviceType.mobileMini);
      }
      return;
    } else {
      _updateDeviceType(DeviceType.mobileMini);
      return;
    }
  }

  void _updateDeviceType(DeviceType deviceType) {
    // print('Device; ${deviceType}');
    this.deviceType = deviceType;
    notifyListeners();
  }
}
