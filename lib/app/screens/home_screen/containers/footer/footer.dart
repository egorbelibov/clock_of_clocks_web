import 'package:flutter/material.dart';

import '../../../../g_styles/sizes.dart';
import 'desktop/desktop_footer.dart';
import 'mobile/mobile_footer.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  Widget desktopFooter;
  Widget mobileFooter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth > desktopMinWidth) {
        desktopFooter ??= DesktopFooter();
        return desktopFooter;
      } else {
        mobileFooter ??= MobileFooter();
        return mobileFooter;
      }
    });
  }
}
