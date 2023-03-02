// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/components/ui_forecast/ui_forecast.dart';
import 'package:weather/ui/components/ui_forecast_text.dart';

class UiAnimatedForecast extends StatefulWidget {
  const UiAnimatedForecast({super.key});

  @override
  State<UiAnimatedForecast> createState() => _UiAnimatedForecastState();
}

class _UiAnimatedForecastState extends State<UiAnimatedForecast>
    with TickerProviderStateMixin {
  bool _isShowDescription = false;

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleScale,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Transform.scale(
                scale: 1 + _controller.value * 3,
                child: const UiForecast(),
              ),
              Transform.scale(
                scale: _controller.value,
                child: const UiForecastText(),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _handleScale() {
    setState(() {
      _isShowDescription ? _controller.reverse() : _controller.forward();

      _isShowDescription = !_isShowDescription;
    });
  }
}
