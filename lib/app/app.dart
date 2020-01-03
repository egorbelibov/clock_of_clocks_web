import 'package:clock_of_clocks_website/app/routes.dart';

import 'screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/launch_screen/launch_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock Of Clocks',
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
