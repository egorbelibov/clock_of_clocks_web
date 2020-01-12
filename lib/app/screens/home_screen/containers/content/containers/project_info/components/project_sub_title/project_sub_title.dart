import 'package:flutter/material.dart';

import '../../../../../../../../g_helpers/links.dart';
import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/spaces.dart';
import '../../../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ProjectSubTitle extends StatelessWidget {
  final DeviceType deviceType;

  ProjectSubTitle({@required this.deviceType}) : assert(deviceType != null);

  @override
  Widget build(BuildContext context) {
    if (deviceType.isDesktopBased()) {
      return Padding(
        padding: const EdgeInsets.only(right: rightScreenPadding),
        child: Row(
          children: _buildSubTitleTextGroup(context),
        ),
      );
    } else {
      return Column(
        children: _buildSubTitleTextGroup(context),
      );
    }
  }

  List<Widget> _buildSubTitleTextGroup(BuildContext context) {
    return [
      CustomCursor(
        cursorStyle: CustomCursor.text,
        child: SelectableText(
          'Designed & Developed for' + (deviceType.isDesktopBased() ? ' ' : ''),
          style: subTitleTextStyle(context, deviceType),
        ),
      ),
      CustomCursor(
        cursorStyle: CustomCursor.pointer,
        child: GestureDetector(
          onTap: () => openWebUrl(
            'https://www.lenovo.com/us/en/smart-clock',
          ),
          child: Text(
            'Lenovo Smart Clock',
            style: subTitleRemarkedTextStyle(context, deviceType),
          ),
        ),
      ),
    ];
  }
}
