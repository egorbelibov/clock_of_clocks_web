// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

void openWebUrl(String url, {String option = '_blank'}) {
  html.window.open(url, option);
}
