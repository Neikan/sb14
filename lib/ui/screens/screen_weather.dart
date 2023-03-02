// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/components/ui_animated_forecast.dart';
import 'package:weather/ui/components/ui_background.dart';
import 'package:weather/ui/components/ui_forecast_fabs.dart';
import 'package:weather/ui/components/ui_header.dart';
import 'package:weather/ui/components/ui_theme.dart';

class ScreenWeather extends StatelessWidget {
  const ScreenWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UiHeader(title: 'Today'),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiBackground(color: UiTheme.of(context).theme.backgroundColor),
              const UiAnimatedForecast(),
            ],
          ),
        ),
      ),
      floatingActionButton: const UiForecastFabs(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
