// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/styles/themes/theme_dark.dart';
import 'package:weather/ui/styles/themes/theme_light.dart';

class Themes {
  static ThemeData getTheme(bool isDark) => isDark ? themeDark : themeLight;
}
