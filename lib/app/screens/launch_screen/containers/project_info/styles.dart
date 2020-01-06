import 'package:flutter/widgets.dart';

import '../../../../g_styles/colors.dart';
import '../../../../g_styles/fonts.dart';

TextStyle titleTextStyle(BuildContext context) {
  assert(context != null);

  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}

TextStyle highlightedTextStyle(BuildContext context) {
  assert(context != null);

  return TextStyle(
    fontFamily: defaultFontFamily,
    color: themeBasedColor(context, PaletteColor.tertiaryColor),
  );
}

TextStyle subTitleTextStyle(BuildContext context) {
  assert(context != null);

  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w100,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
