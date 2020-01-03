import 'package:flutter/material.dart';

import 'screens/home_screen/home_screen.dart';
import 'screens/launch_screen/launch_screen.dart';
import 'g_styles/colors.dart';
import 'g_styles/theme_data.dart';
import 'routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(context),
      title: 'Clock Of Clocks',
      color: themeBasedColor(context, PaletteColor.primaryColor),
      initialRoute: launchScreenRoute,
      routes: {
        '/': (_) => LaunchScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case homeScreenRoute:
            // TODO: update with custom animation:
            return MaterialPageRoute(builder: (_) => HomeScreen());
          default:
            print('Unknown route ignited');
            return null;
        }
      },
    );
  }
}
