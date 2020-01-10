import 'package:flutter/material.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

/// Subscribes [context.widget] to changes from [ThemeEssentials].
///
/// Every time a new value is notified, [context.widget]
/// will be re-built. If [listen] is false. It will only get
/// the value once.
Brightness subscribeToBrigthness(BuildContext context, {bool listen = true}) {
  ThemeEssentials themeEssentials = PropertyChangeProvider.of<ThemeEssentials>(
    context,
    listen: listen,
  ).value;
  assert(themeEssentials != null);
  assert(themeEssentials._brightness != null);
  return themeEssentials._brightness;
}

/// Holds Essential [Theme] Information.
///
/// It's much faster at **updating** & **notifying** than: `Theme.of(context)`
class ThemeEssentials extends PropertyChangeNotifier<String> {
  Brightness _brightness = Brightness.light;

  ThemeEssentials();

  get brightness => _brightness;
  set brightness(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }
}