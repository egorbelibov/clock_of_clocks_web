import 'package:clock_of_clocks_website/app/g_styles/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../g_helpers/links.dart';
import '../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ProjectTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 45,
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
  const double containerWidth = 10;
  const double containerHeight = 35;
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
