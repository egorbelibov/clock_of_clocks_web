import 'package:flutter/widgets.dart';

import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/fonts.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 19,
    fontWeight: FontWeight.w100,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}

TextStyle remarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
