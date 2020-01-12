// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/widgets.dart';

import '../g_extensions/apt_brightness.dart';
import '../g_state/theme_essentials.dart';

enum PaletteColor {
  primaryColor,
  secondaryColor,
  tertiaryColor,
  primaryGradientColor,
  secondaryGradientColor,
  backgroundColor,
  footerColor,
  footerTextColor,
  buttonSplashColor,
}

const lightPrimaryColor = Color(0xFF000000);
const lightSecondaryColor = Color(0x20252525);

const lightTertiaryColor = Color(0xFFFE1212);
const lightPrimaryGradientColor = Color(0xFFFFFFFF);
const lightSecondaryGradientColor = Color(0xFF000000);

const lightBackgroundColor = Color(0xFFFFFFFF);
const lightFooterColor = Color(0xFF000000);
const lightFooterTextColor = Color(0xFFFFFFFF);

const darkPrimaryColor = Color(0xFFFFFFFF);
const darkSecondaryColor = Color(0x20DADADA);
const darkTertiaryColor = Color(0xFFFE1212);

const darkPrimaryGradientColor = Color(0xFF000000);
const darkSecondaryGradientColor = Color(0xFFFFFFFF);

const darkBackgroundColor = Color(0xFF101010);
const darkFooterColor = Color(0xFF000000);
const darkFooterTextColor = Color(0xFFFFFFFF);

const buttonSplashColor = Color(0x15000000);

Color themeBasedColor(
  BuildContext context,
  PaletteColor color, {
  bool listen = true,
}) {
  final Brightness brightness = subscribeToBrigthness(context, listen: listen);
  final isLight = brightness.isLight();

  switch (color) {
    case PaletteColor.primaryColor:
      return isLight ? lightPrimaryColor : darkPrimaryColor;
    case PaletteColor.secondaryColor:
      return isLight ? lightSecondaryColor : darkSecondaryColor;
    case PaletteColor.tertiaryColor:
      return isLight ? lightTertiaryColor : darkTertiaryColor;
    case PaletteColor.backgroundColor:
      return isLight ? lightBackgroundColor : darkBackgroundColor;
    case PaletteColor.primaryGradientColor:
      return isLight ? lightPrimaryGradientColor : darkPrimaryGradientColor;
    case PaletteColor.secondaryGradientColor:
      return isLight ? lightSecondaryGradientColor : darkSecondaryGradientColor;
    case PaletteColor.footerColor:
      return isLight ? lightFooterColor : darkFooterColor;
    case PaletteColor.footerTextColor:
      return isLight ? lightFooterTextColor : darkFooterTextColor;
    case PaletteColor.buttonSplashColor:
      return buttonSplashColor;
    default:
      return isLight ? Color(0xFF000000) : Color(0xFFFFFFFF);
  }
}
