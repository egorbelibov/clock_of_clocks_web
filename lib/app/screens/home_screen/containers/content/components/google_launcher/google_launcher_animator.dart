import 'package:flutter/widgets.dart';

import 'google_launcher.dart';

class GoogleLauncherAnimator extends StatefulWidget {
  @override
  _GoogleLauncherAnimatorState createState() => _GoogleLauncherAnimatorState();
}

class _GoogleLauncherAnimatorState extends State<GoogleLauncherAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 5000),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return GoogleLauncher(controller: _controller);
  }
}
