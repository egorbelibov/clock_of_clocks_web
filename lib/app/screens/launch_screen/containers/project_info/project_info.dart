// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

/// A Container with a Title and Sub Title.
class ProjectInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        children: [
          _buildTitle(context),
          _buildSubTitle(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.pointer,
      child: RichText(
        text: TextSpan(style: titleTextStyle(context), children: [
          TextSpan(text: 'CLOCK'),
          TextSpan(text: 'OF', style: highlightedTextStyle(context)),
          TextSpan(text: 'CLOCKS'),
        ]),
      ),
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.text,
      child: RichText(
        text: TextSpan(style: subTitleTextStyle(context), children: [
          TextSpan(text: 'A Digital Clock made of Analog Clocks'),
        ]),
      ),
    );
  }
}
