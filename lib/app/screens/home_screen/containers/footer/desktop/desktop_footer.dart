import 'package:flutter/material.dart';

import '../../../../../g_helpers/device_type.dart';
import '../../../../../g_helpers/links.dart';
import '../../../../../g_styles/colors.dart';
import '../../../../../g_wrapper/custom_cursor.dart';
import '../styles.dart';

class DesktopFooter extends StatelessWidget {
  final DeviceType deviceType;

  DesktopFooter({@required this.deviceType}) : assert(deviceType != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: footerPadding(deviceType),
      color: themeBasedColor(context, PaletteColor.footerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _leftColumn(context),
          _rightColumn(context),
        ],
      ),
    );
  }

  Widget _leftColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCursor(
          cursorStyle: CustomCursor.text,
          child: SelectableText(
            'Designed & Developed by',
            style: defaultTextStyle(context, deviceType),
          ),
        ),
        CustomCursor(
          cursorStyle: CustomCursor.pointer,
          child: GestureDetector(
            onTap: () => openWebUrl('https://twitter.com/egorbelibov'),
            child: Text(
              'Egor Belibov',
              style: remarkedTextStyle(context, deviceType),
            ),
          ),
        ),
      ],
    );
  }

  Widget _rightColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomCursor(
          cursorStyle: CustomCursor.text,
          child: SelectableText(
            'Project Source Code',
            style: remarkedTextStyle(context, deviceType),
          ),
        ),
        CustomCursor(
          cursorStyle: CustomCursor.pointer,
          child: GestureDetector(
            onTap: () {
              openWebUrl('https://github.com/egorbelibov/clock_of_clocks');
            },
            child: Text(
              'github.com/egorbelibov/clock_of_clocks',
              style: defaultTextStyle(context, deviceType),
            ),
          ),
        ),
      ],
    );
  }
}
