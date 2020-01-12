// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_styles/spaces.dart';

EdgeInsetsGeometry clockContainerPadding(DeviceType deviceType) {
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

double clockContainerWidth(DeviceType deviceType, double deviceWidth) {
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

double clockContainerHeight(DeviceType deviceType, double deviceHeight) {
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
