import 'package:flutter/widgets.dart';

import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/fonts.dart';

TextStyle defaultTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w100,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w100,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}

TextStyle remarkedTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}
