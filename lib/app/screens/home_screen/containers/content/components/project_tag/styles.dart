import 'package:flutter/widgets.dart';

import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/fonts.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w100,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}

TextStyle remarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
