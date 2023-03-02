// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final themeLight = ThemeData(
  backgroundColor: Colors.blue.shade300,
  disabledColor: Colors.green,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.grey.shade800,
      fontSize: 24,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.grey.shade800,
      fontSize: 24,
    ),
  ),
  primaryColorDark: Colors.white,
  primaryColorLight: Colors.white,
  primaryColor: Colors.grey.shade800,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(
      Colors.white.value,
      const <int, Color>{
        50: Colors.white10,
        100: Colors.white12,
        200: Colors.white24,
        300: Colors.white30,
        400: Colors.white54,
        500: Colors.white70,
        600: Colors.white70,
        700: Colors.white70,
        800: Colors.white70,
        900: Colors.white70,
      },
    ),
    backgroundColor: Colors.yellow.shade700,
  ).copyWith(secondary: Colors.blue.shade900),
);
