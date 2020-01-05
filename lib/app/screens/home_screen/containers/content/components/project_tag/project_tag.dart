import 'package:flutter/material.dart';

import '../../../../../../g_helpers/links.dart';
import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/spaces.dart';
import '../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ProjectTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topScreenPadding,
      right: rightScreenPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          tagText(context),
          SizedBox(width: 15),
          tagDecoration(context),
        ],
      ),
    );
  }
}

Widget tagText(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      CustomCursor(
        cursorStyle: CustomCursor.text,
        child: SelectableText(
          'Created for the',
          style: defaultTextStyle(context),
        ),
      ),
      CustomCursor(
        cursorStyle: CustomCursor.pointer,
        child: GestureDetector(
          onTap: () => openWebUrl('https://flutter.dev/clock'),
          child: Text(
            'Flutter Clock Challenge',
            style: remarkedTextStyle(context),
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
        color: themeBasedColor(context, PaletteColor.primaryColor),
      ),
      Container(
        width: containerWidth,
        height: containerHeight,
        color: themeBasedColor(context, PaletteColor.tertiaryColor),
      )
    ],
  );
}
