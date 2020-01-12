// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../g_models/device_type.dart';
import '../../../../g_state/device.dart' show subscribeToDeviceType;
import 'desktop/desktop_footer.dart';
import 'mobile/mobile_footer.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  Widget desktopFooter;
  Widget mobileFooter;
  Widget mobileMiniFooter;

  @override
  Widget build(BuildContext context) {
    final DeviceType deviceType = subscribeToDeviceType(context);
    switch (deviceType) {
      case DeviceType.desktopBig:
      case DeviceType.desktop:
        desktopFooter ??= DesktopFooter(deviceType: DeviceType.desktop);
        return desktopFooter;
      case DeviceType.mobile:
        mobileFooter ??= MobileFooter(deviceType: DeviceType.mobile);
        return mobileFooter;
      case DeviceType.mobileMini:
        mobileMiniFooter ??= MobileFooter(deviceType: DeviceType.mobileMini);
        return mobileMiniFooter;
      default:
        assert(true); // Should never get into default.
        return null;
    }
  }
}
