// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/components/ui_theme.dart';
import 'package:weather/ui/screens/screen_weather.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UiTheme(
      child: Builder(
        builder: (innerContext) {
          return MaterialApp(
            theme: UiTheme.of(innerContext).theme,
            debugShowCheckedModeBanner: false,
            home: const ScreenWeather(),
          );
        },
      ),
    );
  }
}
