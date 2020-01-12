// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io' show Platform;

import 'package:flutter/foundation.dart'
    show kIsWeb, debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import 'app/app.dart';
import 'app/g_state/device.dart';
import 'app/g_state/theme_essentials.dart';

void main() {
  _setOverrideForDesktop();
  runApp(
    PropertyChangeProvider(
      value: ThemeEssentials(),
      child: PropertyChangeProvider(
        value: Device(),
        child: App(),
      ),
    ),
  );
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
