import 'package:clock_of_clocks_website/app/g_helpers/links.dart';
import 'package:clock_of_clocks_website/app/g_styles/spaces.dart';
import 'package:flutter/material.dart';

import '../../../../../../g_wrapper/custom_cursor.dart';
import 'components/action_button/action_button.dart';
import 'styles.dart';

class ProjectInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 0,
      child: Container(
        height: 900,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _defaultPadding(context, _renderSubTitle),
            _defaultPadding(context, _renderTitle),
            ActionButton('Project Source Code'),
          ],
        ),
      ),
    );
  }

  Widget _defaultPadding(BuildContext context, Function childToRender) {
    return Padding(
      padding: const EdgeInsets.only(right: rightScreenPadding),
      child: childToRender(context),
    );
  }

  Widget _renderSubTitle(BuildContext context) {
    return Row(
      children: [
        CustomCursor(
          cursorStyle: CustomCursor.text,
          child: SelectableText(
            'Designed & Developed for ',
            style: subTitleTextStyle(context),
          ),
        ),
        CustomCursor(
          cursorStyle: CustomCursor.pointer,
          child: GestureDetector(
            onTap: () => openWebUrl('https://www.lenovo.com/us/en/smart-clock'),
            child: Text(
              'Lenovo Smart Clock',
              style: subTitleRemarkedTextStyle(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _renderTitle(BuildContext context) {
    return CustomCursor(
      cursorStyle: CustomCursor.pointer,
      child: RichText(
        text: TextSpan(
          style: titleTextStyle(context),
          children: [
            TextSpan(text: 'CLOCK'),
            TextSpan(text: 'OF', style: titleHighlightedTextStyle(context)),
            TextSpan(text: 'CLOCKS'),
          ],
        ),
      ),
    );
  }
}
