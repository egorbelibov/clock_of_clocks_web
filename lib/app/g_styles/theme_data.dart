// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../g_state/theme_essentials.dart';
import 'colors.dart';
import 'fonts.dart';

final appTheme = (context) => ThemeData(
      brightness: subscribeToBrigthness(context),
      fontFamily: defaultFontFamily,
      primaryColor: themeBasedColor(
        context,
        PaletteColor.primaryColor,
      ),
      scaffoldBackgroundColor: themeBasedColor(
        context,
        PaletteColor.backgroundColor,
      ),
      backgroundColor: themeBasedColor(
        context,
        PaletteColor.backgroundColor,
      ), // part of the progress bar
    );
