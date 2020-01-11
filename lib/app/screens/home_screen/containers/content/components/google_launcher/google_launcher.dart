import 'package:flutter/material.dart';

class GoogleLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // THIS IS WORKIGN
    // return Center(
    //   child: Container(
    //     width: 10,
    //     height: 10,
    //     color: Color(0xFFFFFFFF),
    //   ),
    // );

    // THIS IS NOT :/ it messes up the transformed container in [ClockContainer]
    return Container(
      width: 100,
      color: Color(0xFF000000),
      height: 100,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 10, height: 10, color: Color(0xFFFFFFFF)),
            Container(width: 10, height: 10, color: Color(0xFFFFFFFF)),
          ],
        ),
      ),
    );
  }

}
