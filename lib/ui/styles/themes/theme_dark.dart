// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final themeDark = ThemeData(
  backgroundColor: Colors.grey.shade700,
  disabledColor: Colors.green,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.grey.shade800,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
    backgroundColor: Colors.grey.shade800,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey.shade800,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color?>(Colors.grey),
    thumbColor: MaterialStateProperty.all<Color?>(Colors.white),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  ),
  primaryColorDark: Colors.grey.shade800,
  primaryColorLight: Colors.white,
  primaryColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(
      Colors.black.value,
      const <int, Color>{
        50: Colors.black12,
        100: Colors.black26,
        200: Colors.black38,
        300: Colors.black45,
        400: Colors.black54,
        500: Colors.black87,
        600: Colors.black87,
        700: Colors.black87,
        800: Colors.black87,
        900: Colors.black87,
      },
    ),
    backgroundColor: Colors.yellow.shade700,
  ).copyWith(secondary: Colors.blue),
);
