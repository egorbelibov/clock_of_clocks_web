// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../../../g_animations/funny_pulsing_squares/funny_pulsing_squares.dart';

class ClockLauncher extends StatefulWidget {
  final Function onFinished;

  ClockLauncher({@required this.onFinished}) : assert(onFinished != null);

  @override
  _ClockLauncherState createState() => _ClockLauncherState();
}

class _ClockLauncherState extends State<ClockLauncher> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 5000), () {
      widget.onFinished();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FunnyPulsingSquares(
      size: 150,
      color: Color(0xFFFFFFFF),
    );
  }
}
