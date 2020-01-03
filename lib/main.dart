import 'package:flutter/material.dart';

import 'app/app.dart';

void main() {
  /// Workaround to have crisp text...
  /// 
  /// Tested on **Beta** Channel. 
  /// Right now it's not working since there's an issue (https://github.com/flutter/flutter/issues/47041). 
  /// Seems like whenever it's enabled it doesn't display text... 🧐
  // bool.fromEnvironment('FLUTTER_WEB_USE_SKIA', defaultValue: true);
  runApp(App());
}
