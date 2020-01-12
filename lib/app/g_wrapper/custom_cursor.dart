// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class CustomCursor extends MouseRegion {
  static final appContainer =
      html.window.document.getElementById('app-container');

  // cursor types from http://www.javascripter.net/faq/stylesc.htm
  static final String pointer = 'pointer';
  static final String text = 'text';

  CustomCursor({Widget child, String cursorStyle = 'pointer'})
      : super(
            onHover: (PointerHoverEvent evt) {
              if (kIsWeb) {
                appContainer.style.cursor = cursorStyle;
              }
            },
            onExit: (PointerExitEvent evt) {
              if (kIsWeb) {
                appContainer.style.cursor = 'default';
              }
            },
            child: child);
}
