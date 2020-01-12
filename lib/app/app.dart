// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'g_animations/page_transitions/scale_route.dart';
import 'g_styles/colors.dart';
import 'g_styles/theme_data.dart';
import 'routes.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/launch_screen/launch_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildApp(context);
  }

  Widget _buildApp(BuildContext context) {
    return MaterialApp(
      theme: appTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      color: themeBasedColor(context, PaletteColor.backgroundColor),
      title: 'Clock Of Clocks',
      initialRoute: launchScreenRoute,
      routes: {
        '/': (_) => LaunchScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case homeScreenRoute:
            return ScaleRoute(page: HomeScreen());
          default:
            print('Unknown route ignited');
            return null;
        }
      },
    );
  }
}
