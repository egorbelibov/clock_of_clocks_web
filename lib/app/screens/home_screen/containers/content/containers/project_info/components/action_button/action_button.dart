import 'package:flutter/widgets.dart';

import '../../../../../../../../g_components/core_button.dart';
import '../../../../../../../../g_helpers/links.dart';
import '../../../../../../../../g_styles/colors.dart';
import '../../../../../../../../g_wrapper/custom_cursor.dart';
import 'styles.dart';

class ActionButton extends StatelessWidget {
  final String text;

  ActionButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _renderButton(context),
        _renderDecorativeBox(context),
      ],
    );
  }

  Widget _renderButton(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.pointer,
      child: CoreButton(
        height: 60,
        onTap: () => openWebUrl(
          'https://github.com/egorbelibov/clock_of_clocks',
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
        color: themeBasedColor(context, PaletteColor.tertiaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 55,
          ),
          child: Center(
            child: Text(
              'Project Source Code',
              style: buttonTextStyle(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderDecorativeBox(BuildContext context) {
    return Container(
      height: 60,
      width: 45,
      color: themeBasedColor(context, PaletteColor.primaryColor),
    );
  }
}
