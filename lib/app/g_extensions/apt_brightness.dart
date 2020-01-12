import 'dart:ui' show Brightness;

extension AptBrightness on Brightness {
  bool isLight() => this == Brightness.light;
}
