import 'package:flutter/widgets.dart';

import '../../../../g_styles/colors.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}


TextStyle remarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.footerTextColor),
  );
}
