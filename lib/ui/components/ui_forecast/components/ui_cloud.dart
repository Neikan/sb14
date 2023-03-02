// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_theme.dart';
import 'package:weather/ui/styles/sizes.dart';

class UiCloud extends StatelessWidget {
  const UiCloud({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<StateApp>(context);

    return Observer(
      builder: (_) => CustomPaint(
        painter: _UiCloudPainter(
          cloudiness: state.cloudiness,
          color: UiTheme.of(context).theme.primaryColorLight,
        ),
      ),
    );
  }
}

class _UiCloudPainter extends CustomPainter {
  final double cloudiness;
  final Color color;

  _UiCloudPainter({
    required this.cloudiness,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.7)
      ..style = PaintingStyle.fill;

    const innerSize = Size(weatherSize, weatherSize * 0.25);

    canvas.drawOval(const Offset(0, weatherSize * 0.35) & innerSize, paint);

    canvas.drawOval(
      const Offset(weatherSize * 0.125, weatherSize * 0.41) & innerSize,
      paint,
    );

    canvas.drawOval(
      const Offset(weatherSize * 0.2, weatherSize * 0.43) & innerSize,
      paint,
    );

    canvas.drawOval(
      const Offset(weatherSize * 0.4, weatherSize * 0.26) & innerSize,
      paint,
    );

    canvas.drawOval(
      const Offset(weatherSize * -0.32, weatherSize * 0.39) & innerSize,
      paint,
    );

    canvas.drawOval(
      const Offset(weatherSize * -0.4, weatherSize * 0.30) & innerSize,
      paint,
    );
  }

  @override
  bool shouldRepaint(_UiCloudPainter oldDelegate) => false;
}
