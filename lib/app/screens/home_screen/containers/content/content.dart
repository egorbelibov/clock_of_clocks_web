// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'components/clock_table/clock_table.dart';
import 'components/project_tag/project_tag.dart';
import 'components/theme_switch/theme_switch.dart';
import 'containers/clock_container/clock_container.dart';
import 'containers/clock_frame/clock_frame.dart';
import 'containers/project_info/project_info.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ClockTable(),
          ClockFrame(),
          ProjectTag(),
          ProjectInfo(),
          ClockContainer(),
          ThemeSwitch(),
        ],
      ),
    );
  }
}
