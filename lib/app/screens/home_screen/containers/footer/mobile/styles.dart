import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:clock_of_clocks_website/app/g_styles/fonts.dart';
import 'package:flutter/widgets.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}

TextStyle remarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}
