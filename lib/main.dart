// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_app.dart';

void main() => runApp(
      Provider(
        create: (_) => StateApp(),
        child: const UiApp(),
      ),
    );
