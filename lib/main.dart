import 'dart:io' show Platform;

import 'package:flutter/foundation.dart'
    show kIsWeb, debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() {
  _setOverrideForDesktop();
  runApp(App());
}

void _setOverrideForDesktop() {
  if (kIsWeb) return;

  if (Platform.isMacOS) {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  } else if (Platform.isFuchsia) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}
