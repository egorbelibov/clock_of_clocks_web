import 'package:flutter/material.dart';

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
      // Call dispose (cause pop() never calls it...)
      super.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}
