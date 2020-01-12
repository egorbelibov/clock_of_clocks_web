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
    if (deviceType.isDesktopBased()) {
      return Padding(
        padding: const EdgeInsets.only(right: rightScreenPadding),
        child: _buildTitleGroup(context),
      );
    } else {
      return _buildTitleGroup(context);
    }
  }

  Widget _buildTitleGroup(BuildContext context) {
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
