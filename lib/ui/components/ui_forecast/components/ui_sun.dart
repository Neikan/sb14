// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_theme.dart';
import 'package:weather/ui/styles/sizes.dart';

class UiSun extends StatelessWidget {
  const UiSun({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<StateApp>(context);

    return Observer(
      builder: (_) => CustomPaint(
        painter: _UiSunPainter(
          cloudiness: state.cloudiness,
          color: UiTheme.of(context).theme.colorScheme.background,
        ),
      ),
    );
  }
}

class _UiSunPainter extends CustomPainter {
  final double cloudiness;
  final Color color;

  _UiSunPainter({
    required this.cloudiness,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      const Offset(weatherSize * 0.5, weatherSize * 0.25),
      weatherSize * 0.25,
      paint,
    );
  }

  @override
  bool shouldRepaint(_UiSunPainter oldDelegate) => false;
}
