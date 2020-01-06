import 'package:flutter/widgets.dart';

import '../../../../../../../../g_components/core_button.dart';
import '../../../../../../../../g_helpers/links.dart';
import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/colors.dart';
import '../../../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

const projectUrl = 'https://github.com/egorbelibov/clock_of_clocks';

class ActionButton extends StatelessWidget {
  final String text;
  final DeviceType deviceType;
  ActionButton(this.text, {@required this.deviceType})
      : assert(deviceType != null);

  @override
  Widget build(BuildContext context) {
    switch (deviceType) {
      case DeviceType.desktop:
        return Row(
          children: [
            _renderButton(context),
            _renderPlainBox(context),
          ],
        );
      case DeviceType.mobile:
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: _renderButton(context),
        );
      case DeviceType.mobileMini:
        return Padding(
          padding: const EdgeInsets.only(top: 15),
          child: _renderButton(context),
        );
      default:
        return Container();
    }
  }

  Widget _renderButton(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.pointer,
      child: CoreButton(
        height: 50,
        width: buttonWidth(deviceType),
        onTap: () => openWebUrl(projectUrl),
        borderRadius: buttonBorderRadius(deviceType),
        color: themeBasedColor(context, PaletteColor.tertiaryColor),
        child: Padding(
          padding: buttonPadding(deviceType),
          child: Center(
            child: Text(
              'Project Source Code',
              style: buttonTextStyle(context, deviceType),
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderPlainBox(BuildContext context) {
    if (deviceType == DeviceType.desktop) {
      return Container(
        height: 50,
        width: 45,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    } else {
      return Container(
        height: 6,
        width: 70,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    }
  }
}
