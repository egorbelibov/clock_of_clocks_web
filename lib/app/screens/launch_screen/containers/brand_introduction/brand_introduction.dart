import 'package:flutter/widgets.dart';

import 'styles.dart';

/// A Container with a Title and Sub Title.
class BrandIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        children: [
          _renderTitle(context),
          _renderSubTitle(context),
        ],
      ),
    );
  }

  Widget _renderTitle(BuildContext context) {
    final titleTextStyle = getTitleTextStyle(context);
    final titleHighlightStyle = getHighlightedTextStyle(context);
    return RichText(
      text: TextSpan(style: titleTextStyle, children: [
        TextSpan(text: 'CLOCK'),
        TextSpan(text: 'OF', style: titleHighlightStyle),
        TextSpan(text: 'CLOCKS'),
      ]),
    );
  }

  Widget _renderSubTitle(BuildContext context) {
    final subTitleTextStyle = getSubTitleTextStyle(context);
    return RichText(
      text: TextSpan(style: subTitleTextStyle, children: [
        TextSpan(text: 'A Digital Clock made of Analog Clocks'),
      ]),
    );
  }
}
