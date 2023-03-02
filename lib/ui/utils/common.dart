// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/const/common.dart';
import 'package:weather/ui/styles/decorations.dart';

Brightness getStatusBarBrightness() =>
    Platform.isAndroid ? Brightness.dark : Brightness.light;

double getCloudiness(double value, bool isIncrement) => double.parse(
      (isIncrement ? value + 0.1 : value - 0.1).toStringAsFixed(1),
    );

double getOpacity(double limit, double cloudiness) {
  double opacity = cloudiness;

  final isCheck = (cloudiness - limit).isNegative;

  if (limit == maxSunny) {
    opacity = isCheck ? 1.0 - cloudiness : 0.0;
  }

  if (limit == minCloudiness) {
    opacity = isCheck ? 0.0 : cloudiness;
  }

  if (limit == minRainy) {
    opacity = isCheck ? 0.0 : opacityRain[cloudiness]!;
  }

  return opacity;
}
