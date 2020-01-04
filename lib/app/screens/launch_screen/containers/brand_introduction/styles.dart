import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/widgets.dart';

TextStyle getTitleTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}

TextStyle getHighlightedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    color: themeBasedColor(context, PaletteColor.tertiaryColor),
  );
}

TextStyle getSubTitleTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w100,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
