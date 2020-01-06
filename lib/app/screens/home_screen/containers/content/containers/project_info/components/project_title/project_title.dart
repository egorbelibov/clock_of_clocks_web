import 'package:flutter/widgets.dart';

import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/spaces.dart';
import '../../../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ProjectTitle extends StatelessWidget {
  final DeviceType deviceType;

  ProjectTitle({@required this.deviceType}) : assert(deviceType != null);

  @override
  Widget build(BuildContext context) {
    if (deviceType == DeviceType.desktop) {
      return Padding(
        padding: const EdgeInsets.only(right: rightScreenPadding),
        child: _renderTitleGroup(context),
      );
    } else {
      return _renderTitleGroup(context);
    }
  }

  Widget _renderTitleGroup(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.pointer,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: titleTextStyle(context, deviceType),
            children: [
              TextSpan(text: 'CLOCK'),
              TextSpan(text: 'OF', style: titleHighlightedTextStyle(context)),
              TextSpan(text: 'CLOCKS'),
            ],
          ),
        ),
      ),
    );
  }
}
