import 'package:flutter/widgets.dart';

import 'colors.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
