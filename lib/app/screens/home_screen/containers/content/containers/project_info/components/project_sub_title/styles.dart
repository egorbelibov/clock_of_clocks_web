import 'package:flutter/widgets.dart';

import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/colors.dart';
import '../../../../../../../../g_styles/fonts.dart';

TextStyle subTitleTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w100,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w100,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}

TextStyle subTitleRemarkedTextStyle(
    BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}
