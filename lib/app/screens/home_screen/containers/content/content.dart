import 'package:flutter/widgets.dart';

import 'components/project_tag/project_tag.dart';
import 'containers/project_info/project_info.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          ProjectTag(),
          ProjectInfo(),
        ],
      ),
    );
  }
}
