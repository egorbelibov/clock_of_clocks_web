import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/widgets.dart';

TextStyle getDefaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}

TextStyle getRemarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}
