import 'package:flutter/material.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import 'g_animations/page_transitions/augment_transition.dart';
import 'g_state/device.dart';
import 'g_styles/colors.dart';
import 'g_styles/theme_data.dart';
import 'routes.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/launch_screen/launch_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PropertyChangeProvider(
      value: Device(),
      child: MaterialApp(
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
              return AugmentTransition(page: HomeScreen());
            default:
              print('Unknown route ignited');
              return null;
          }
        },
      ),
    );
  }
}
