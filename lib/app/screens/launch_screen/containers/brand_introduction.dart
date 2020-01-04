import 'package:flutter/widgets.dart';

import '../../../g_styles/colors.dart';

/// A Container with a Title and Sub Title.
class BrandIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = _getTitleTextStyle(context);
    final titleHighlightStyle = _highlightedTextStyle(context);
    final subTitleTextStyle = _subTitleTextStyle(context);

    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(style: titleTextStyle, children: [
              TextSpan(text: 'CLOCK'),
              TextSpan(text: 'OF', style: titleHighlightStyle),
              TextSpan(text: 'CLOCKS'),
            ]),
          ),
          RichText(
            text: TextSpan(style: subTitleTextStyle, children: [
              TextSpan(text: 'A Digital Clock made of Analog Clocks'),
            ]),
          ),
        ],
      ),
    );
  }

  TextStyle _getTitleTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: themeBasedColor(context, PaletteColor.primaryColor),
    );
  }

  TextStyle _highlightedTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: themeBasedColor(context, PaletteColor.tertiaryColor),
    );
  }

  TextStyle _subTitleTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.w100,
      color: themeBasedColor(context, PaletteColor.primaryColor),
    );
  }
}
