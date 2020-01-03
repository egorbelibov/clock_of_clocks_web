import 'package:flutter/material.dart';

import 'colors.dart';

final appTheme = (context) => ThemeData(
  fontFamily: 'Rogoto',
  primaryColor: themeBasedColor(context, PaletteColor.primaryColor),
  scaffoldBackgroundColor: themeBasedColor(context, PaletteColor.backgroundColor),
  backgroundColor: themeBasedColor(context, PaletteColor.backgroundColor), // part of the progress bar
);