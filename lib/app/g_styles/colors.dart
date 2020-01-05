import 'package:flutter/material.dart';

enum PaletteColor {
  primaryColor,
  secondaryColor,
  tertiaryColor,
  backgroundColor,
  footerColor,
  footerTextColor,
  buttonSplashColor,
  primaryGradientColor,
  secondaryGradientColor,
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

const darkBackgroundColor = Color(0xFF000000);
const darkFooterColor = Color(0xFF000000);
const darkFooterTextColor = Color(0xFFFFFFFF);

const buttonSplashColor = Color(0x15000000);

Color themeBasedColor(BuildContext context, PaletteColor color) {
  final isLightTheme = Theme.of(context).brightness == Brightness.light;
  switch (color) {
    case PaletteColor.primaryColor:
      return isLightTheme ? lightPrimaryColor : darkPrimaryColor;
    case PaletteColor.secondaryColor:
      return isLightTheme ? lightSecondaryColor : darkSecondaryColor;
    case PaletteColor.tertiaryColor:
      return isLightTheme ? lightTertiaryColor : darkTertiaryColor;
    case PaletteColor.backgroundColor:
      return isLightTheme ? lightBackgroundColor : darkBackgroundColor;
    case PaletteColor.footerColor:
      return isLightTheme ? lightFooterColor : darkFooterColor;
    case PaletteColor.footerTextColor:
      return isLightTheme ? lightFooterTextColor : darkFooterTextColor;
    case PaletteColor.buttonSplashColor:
      return buttonSplashColor;
    case PaletteColor.primaryGradientColor:
      return isLightTheme
          ? lightPrimaryGradientColor
          : darkPrimaryGradientColor;
    case PaletteColor.secondaryGradientColor:
      return isLightTheme
          ? lightSecondaryGradientColor
          : darkSecondaryGradientColor;
    default:
      return isLightTheme ? Colors.black : Colors.white;
  }
}
