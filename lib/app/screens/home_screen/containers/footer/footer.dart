import 'package:clock_of_clocks_website/app/g_helpers/device_type.dart';
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
  Widget mobileMiniFooter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth > desktopMinWidth) {
        desktopFooter ??= DesktopFooter(deviceType: DeviceType.desktop);
        return desktopFooter;
      } else if (constraints.maxWidth > mobileMinWidth) {
        mobileFooter ??= MobileFooter(deviceType: DeviceType.mobile);
        return mobileFooter;
      } else {
        mobileMiniFooter ??= MobileFooter(deviceType: DeviceType.mobileMini);
        return mobileMiniFooter;
      }
    });
  }
}
