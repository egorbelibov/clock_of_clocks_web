import 'package:flutter/material.dart';

import '../../../../../g_helpers/links.dart';
import '../../../../../g_styles/colors.dart';
import '../../../../../g_styles/spaces.dart';
import '../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: rightScreenPadding,
      ),
      color: themeBasedColor(context, PaletteColor.footerColor),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCursor(
              cursorStyle: CustomCursor.text,
              child: SelectableText(
                'Designed & Developed by',
                style: defaultTextStyle(context),
              ),
            ),
            CustomCursor(
              cursorStyle: CustomCursor.pointer,
              child: GestureDetector(
                onTap: () => openWebUrl('https://twitter.com/egorbelibov'),
                child: Text(
                  'Egor Belibov',
                  style: remarkedTextStyle(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
