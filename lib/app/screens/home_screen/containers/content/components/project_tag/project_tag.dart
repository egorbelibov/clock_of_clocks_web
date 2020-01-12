// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../../../g_helpers/links.dart';
import '../../../../../../g_models/device_type.dart';
import '../../../../../../g_state/device.dart' show subscribeToDeviceType;
import '../../../../../../g_state/theme_essentials.dart';
import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/spaces.dart';
import '../../../../../../g_wrapper/custom_cursor.dart';
import '../../../../../../g_extensions/apt_brightness.dart';
import 'styles.dart';

class ProjectTag extends StatefulWidget {
  @override
  _ProjectTagState createState() => _ProjectTagState();
}

class _ProjectTagState extends State<ProjectTag> {
  DeviceType _deviceType;

  Widget _lightDesktopProjectTag;
  Widget _darkDesktopProjectTag;

  Widget _lightMobileProjectTag;
  Widget _darkMobileProjectTag;

  Widget _lightMobileMiniProjectTag;
  Widget _darkMobileMiniProjectTag;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = subscribeToBrigthness(context, listen: true);
    _deviceType = subscribeToDeviceType(context);
    switch (_deviceType) {
      case DeviceType.desktopBig:
      case DeviceType.desktop:
        return brightness.isLight()
            ? _lightDesktopProjectTag ??= _buildProjectTag()
            : _darkDesktopProjectTag ??= _buildProjectTag();
      case DeviceType.mobile:
        return brightness.isLight()
            ? _lightMobileProjectTag ??= _buildProjectTag()
            : _darkMobileProjectTag ??= _buildProjectTag();
      case DeviceType.mobileMini:
        return brightness.isLight()
            ? _lightMobileMiniProjectTag ??= _buildProjectTag()
            : _darkMobileMiniProjectTag ??= _buildProjectTag();
      default:
        assert(true); // Should never get into default.
        return null;
    }
  }

  Widget _buildProjectTag() {
    return Stack(
      children: [
        Positioned(
          top: _deviceType == DeviceType.mobileMini ? 20 : topScreenPadding,
          right: _deviceType == DeviceType.mobileMini ? 20 : rightScreenPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              tagText(context),
              SizedBox(width: 15),
              tagDecoration(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget tagText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomCursor(
          cursorStyle: CustomCursor.text,
          child: SelectableText(
            'Created for the',
            style: defaultTextStyle(context, _deviceType),
          ),
        ),
        CustomCursor(
          cursorStyle: CustomCursor.pointer,
          child: GestureDetector(
            onTap: () => openWebUrl('https://flutter.dev/clock'),
            child: Text(
              'Flutter Clock Challenge',
              style: remarkedTextStyle(context, _deviceType),
            ),
          ),
        ),
      ],
    );
  }

  Widget tagDecoration(BuildContext context) {
    const double containerWidth = 8;
    const double containerHeight = 30;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          color: themeBasedColor(
            context,
            PaletteColor.primaryColor,
            listen: false,
          ),
        ),
        Container(
          width: containerWidth,
          height: containerHeight,
          color: themeBasedColor(
            context,
            PaletteColor.tertiaryColor,
            listen: false,
          ),
        )
      ],
    );
  }
}
