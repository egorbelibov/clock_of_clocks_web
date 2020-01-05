import 'package:clock_of_clocks_website/app/g_styles/fonts.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

final appTheme = (context) => ThemeData(
  fontFamily: defaultFontFamily,
  primaryColor: themeBasedColor(context, PaletteColor.primaryColor),
  scaffoldBackgroundColor: themeBasedColor(context, PaletteColor.backgroundColor),
  backgroundColor: themeBasedColor(context, PaletteColor.backgroundColor), // part of the progress bar
);