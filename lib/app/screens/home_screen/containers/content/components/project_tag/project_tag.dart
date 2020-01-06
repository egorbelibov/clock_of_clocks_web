import 'package:clock_of_clocks_website/app/g_styles/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../g_helpers/device_type.dart';
import '../../../../../../g_helpers/links.dart';
import '../../../../../../g_styles/colors.dart';
import '../../../../../../g_styles/spaces.dart';
import '../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ProjectTag extends StatefulWidget {
  @override
  _ProjectTagState createState() => _ProjectTagState();
}

class _ProjectTagState extends State<ProjectTag> {
  DeviceType deviceType;
  Widget desktopProjectTag;
  Widget mobileProjectTag;
  Widget mobileMiniProjectTag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth > desktopMinWidth) {
        deviceType = DeviceType.desktop;
        return desktopProjectTag ??= _renderProjectTag();
      } else if (constraints.maxWidth > mobileMinWidth) {
        deviceType = DeviceType.mobile;
        return mobileProjectTag ??= _renderProjectTag();
      } else {
        deviceType = DeviceType.mobileMini;
        return mobileMiniProjectTag ??= _renderProjectTag(); 
      }
    });
  }

  Widget _renderProjectTag() {
    return Stack(
      children: [
        Positioned(
          top: deviceType == DeviceType.mobileMini ? 20 : topScreenPadding,
          right: deviceType == DeviceType.mobileMini ? 20 : rightScreenPadding,
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
            style: defaultTextStyle(context, deviceType),
          ),
        ),
        CustomCursor(
          cursorStyle: CustomCursor.pointer,
          child: GestureDetector(
            onTap: () => openWebUrl('https://flutter.dev/clock'),
            child: Text(
              'Flutter Clock Challenge',
              style: remarkedTextStyle(context, deviceType),
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
}
