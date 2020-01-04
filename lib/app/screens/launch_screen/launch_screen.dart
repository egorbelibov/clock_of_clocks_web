import 'package:flutter/material.dart';

import '../../routes.dart' show homeScreenRoute;
import 'containers/animated_clock_mesh.dart';
import 'containers/brand_introduction.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.of(context).popAndPushNamed(homeScreenRoute);
      // Call dispose (cause pop() never calls it...)
      super.dispose();
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedClockMesh(),
            BrandIntroduction(),
          ],
        ),
      ),
    );
  }
}
