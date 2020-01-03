import 'package:clock_of_clocks_website/app/routes.dart' show homeScreenRoute;
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushNamed(
        context,
        homeScreenRoute,
      );
    });
    return Scaffold(
      body: Center(
        child: Text('Launch Screen'),
      ),
    );
  }
}
