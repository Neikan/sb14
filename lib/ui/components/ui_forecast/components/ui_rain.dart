// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_theme.dart';
import 'package:weather/ui/styles/sizes.dart';

class UiRain extends StatelessWidget {
  const UiRain({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<StateApp>(context);

    return Observer(
      builder: (_) => CustomPaint(
        painter: _UiRainPainter(
          cloudiness: state.cloudiness,
          color: UiTheme.of(context).theme.colorScheme.secondary,
        ),
      ),
    );
  }
}

class _UiRainPainter extends CustomPainter {
  final double cloudiness;
  final Color color;

  _UiRainPainter({
    required this.cloudiness,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < weatherSize.toInt(); i += 8) {
      final p1 = Offset(i + 16, weatherSize * 0.5);
      final p2 = Offset(i.toDouble(), weatherSize * 0.85);

      final paint = Paint()
        ..color = color.withOpacity(cloudiness)
        ..strokeWidth = 2;

      canvas.drawLine(p1, p2, paint);
    }
  }

  @override
  bool shouldRepaint(_UiRainPainter oldDelegate) => false;
}
