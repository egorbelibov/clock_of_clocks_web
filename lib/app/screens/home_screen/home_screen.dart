import 'package:flutter/material.dart';

import 'containers/footer/footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Text('TODO: Add stuff here :)')
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
