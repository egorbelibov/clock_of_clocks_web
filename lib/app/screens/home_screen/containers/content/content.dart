import 'package:flutter/widgets.dart';

import 'components/clock_table/clock_table.dart';
import 'components/project_tag/project_tag.dart';
import 'containers/clock_container/clock_container.dart';
import 'containers/clock_frame/clock_frame.dart';
import 'containers/project_info/project_info.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClockTable(),
          ClockFrame(),
          ProjectTag(),
          ProjectInfo(),
          ClockContainer(),
        ],
      ),
    );
  }
}
