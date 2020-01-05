import 'package:flutter/material.dart';

import 'containers/content/content.dart';
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
            Content(), 
            Footer(),
          ],
        ),
      ),
    );
  }
}
