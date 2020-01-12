// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/widgets.dart';

import '../../../../../../g_extensions/apt_brightness.dart';
import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart';
import '../../../../../../g_state/theme_essentials.dart'
    show subscribeToBrigthness;
import 'styles.dart';

class ClockTable extends StatefulWidget {
  @override
  _ClockTableState createState() => _ClockTableState();
}

class _ClockTableState extends State<ClockTable> {
  DeviceType _deviceType;
  double _deviceHeight;

  Image lightImageAsset;
  Image darkImageAsset;

  @override
  Widget build(BuildContext context) {
    _updateDeviceInfo();
    return _buildClockTable();
  }

  void _updateDeviceInfo() {
    _deviceType = subscribeToDeviceType(context);
    _deviceHeight = MediaQuery.of(context).size.height;
  }

  Widget _buildClockTable() {
    final Brightness brightness = subscribeToBrigthness(context);
    final bool themeIsLight = brightness.isLight();

    if (themeIsLight) {
      lightImageAsset ??= Image.asset(
        'assets/images/clock_table.png',
        fit: BoxFit.fitWidth,
        alignment: Alignment.bottomLeft,
      );
    } else {
      darkImageAsset ??= Image.asset(
        'assets/images/clock_table_dark.png',
        fit: BoxFit.fitWidth,
        alignment: Alignment.bottomLeft,
      );
    }

    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.infinity,
        height: clockTableHeight(_deviceType, _deviceHeight),
        child: themeIsLight ? lightImageAsset : darkImageAsset,
      ),
    );
  }
}
