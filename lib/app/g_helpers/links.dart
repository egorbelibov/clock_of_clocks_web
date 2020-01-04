// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void openWebUrl(String url, {String option = '_blank'}) {
  html.window.open(url, option);
}
