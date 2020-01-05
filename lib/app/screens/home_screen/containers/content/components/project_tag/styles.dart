import 'package:flutter/widgets.dart';

import '../../../../../../g_styles/colors.dart';

TextStyle remarkedTextStyle(BuildContext context) {
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: themeBasedColor(context, PaletteColor.primaryColor),
  );
}
