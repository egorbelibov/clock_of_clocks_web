import 'package:flutter/widgets.dart';

import '../../../../g_models/device_type.dart';
import '../../../../g_styles/colors.dart';
import '../../../../g_styles/fonts.dart';
import '../../../../g_styles/spaces.dart';

TextStyle defaultTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    default:
      return null;
  }
}

TextStyle remarkedTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: themeBasedColor(context, PaletteColor.footerTextColor),
      );
    default:
      return null;
  }
}

EdgeInsetsGeometry footerPadding(DeviceType deviceType) {
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
      return EdgeInsets.symmetric(
        vertical: topScreenPadding,
        horizontal: rightScreenPadding,
      );
    case DeviceType.mobile:
      return EdgeInsets.symmetric(
        vertical: 20,
        horizontal: rightScreenPadding,
      );
    case DeviceType.mobileMini:
      return EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      );
    default:
      return null;
  }
}
