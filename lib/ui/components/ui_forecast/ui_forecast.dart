// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/components/ui_animated_opacity.dart';
import 'package:weather/ui/components/ui_forecast/components/ui_cloud.dart';
import 'package:weather/ui/components/ui_forecast/components/ui_rain.dart';
import 'package:weather/ui/components/ui_forecast/components/ui_sun.dart';
import 'package:weather/ui/const/common.dart';
import 'package:weather/ui/styles/sizes.dart';

class UiForecast extends StatefulWidget {
  const UiForecast({super.key});

  @override
  State<UiForecast> createState() => _UiForecastState();
}

class _UiForecastState extends State<UiForecast>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: weatherSize,
      width: weatherSize,
      child: Stack(
        children: const [
          UiAnimatedOpacity(
            limit: maxSunny,
            child: UiSun(),
          ),
          UiAnimatedOpacity(
            limit: minRainy,
            child: UiRain(),
          ),
          UiAnimatedOpacity(
            limit: minCloudiness,
            child: UiCloud(),
          ),
        ],
      ),
    );
  }
}
