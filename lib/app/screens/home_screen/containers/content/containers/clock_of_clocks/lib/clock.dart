// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import 'containers/clock_mesh.dart';
import 'state/clock_state.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Not Mandatory. It's here just to ensure the right orientation is used.
    setPreferredOrientations();

    // Build Clock.
    return renderWidget(context);
  }

  void setPreferredOrientations() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  Widget renderWidget(BuildContext context) {
    return PropertyChangeProvider<ClockState>(
      value: ClockState(),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Container(
          color: themeBasedColor(context, PaletteColor.backgroundColor),
          child: ClockMesh(), // ClockMesh of analog clocks
        ),
      ),
    );
  }
}
