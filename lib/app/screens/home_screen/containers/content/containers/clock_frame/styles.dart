import 'package:flutter/material.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_styles/spaces.dart';

EdgeInsetsGeometry clockFramePadding(DeviceType deviceType) {
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
      return EdgeInsets.only(left: leftScreenPadding, top: topScreenPadding);
    case DeviceType.mobile:
      return EdgeInsets.only(left: 15, top: 15);
    case DeviceType.mobileMini:
      return EdgeInsets.only(left: 5, top: 5);
    default:
      return null;
  }
}

double clockFrameWidth(DeviceType deviceType, double deviceWidth) {
  assert(deviceType != null);
  assert(deviceWidth != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
    case DeviceType.mobile:
    case DeviceType.mobileMini:
      return deviceWidth / 1.5;
    default:
      return null;
  }
}

double clockFrameHeight(DeviceType deviceType, double deviceHeight) {
  assert(deviceType != null);
  assert(deviceHeight != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
    case DeviceType.mobile:
    case DeviceType.mobileMini:
      return deviceHeight / 2;
    default:
      return null;
  }
}
