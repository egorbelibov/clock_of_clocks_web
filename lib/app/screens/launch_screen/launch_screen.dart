// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../g_styles/colors.dart';
import '../../routes.dart' show homeScreenRoute;
import 'containers/animated_clock_mesh/animated_clock_mesh.dart';
import 'containers/project_info/project_info.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.of(context).popAndPushNamed(homeScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBasedColor(
        context,
        PaletteColor.backgroundColor,
        listen: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedClockMesh(),
            ProjectInfo(),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _preCacheImages();
  }

  void _preCacheImages() {
    precacheImage(AssetImage('assets/images/lenovo_clock.png'), context);
    precacheImage(AssetImage('assets/images/lenovo_clock_dark.png'), context);
    precacheImage(AssetImage('assets/images/clock_table.png'), context);
    precacheImage(AssetImage('assets/images/clock_table_dark.png'), context);
  }
}
