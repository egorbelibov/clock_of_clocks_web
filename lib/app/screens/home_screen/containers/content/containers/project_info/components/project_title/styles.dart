import 'package:flutter/widgets.dart';

import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/colors.dart';
import '../../../../../../../../g_styles/fonts.dart';

TextStyle titleTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktop:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 120,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 45,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}

TextStyle titleHighlightedTextStyle(BuildContext context) {
  assert(context != null);

  return TextStyle(
    fontFamily: defaultFontFamily,
    color: themeBasedColor(context, PaletteColor.tertiaryColor),
  );
}
