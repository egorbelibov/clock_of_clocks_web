import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return; // Don't allow screen to pop()
      },
      child: Scaffold(
        body: Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
