import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/widgets.dart';

TextStyle titleTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 25,
    fontWeight: FontWeight.w900,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}

TextStyle highlightedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    color: themeBasedColor(context, PaletteColor.tertiaryColor),
  );
}

TextStyle subTitleTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18.5,
    fontWeight: FontWeight.w100,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
