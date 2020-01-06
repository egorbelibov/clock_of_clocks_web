import 'package:flutter/material.dart';

import '../../../../../g_helpers/device_type.dart';
import '../../../../../g_helpers/links.dart';
import '../../../../../g_styles/colors.dart';
import '../../../../../g_wrapper/custom_cursor.dart';
import '../styles.dart';

class MobileFooter extends StatelessWidget {
  final DeviceType deviceType;

  MobileFooter({@required this.deviceType}) : assert(deviceType != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: footerPadding(deviceType),
      color: themeBasedColor(context, PaletteColor.footerColor),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
        ),
      ),
    );
  }
}
