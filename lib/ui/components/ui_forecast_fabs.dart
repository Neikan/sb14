// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_fab.dart';

class UiForecastFabs extends StatelessWidget {
  const UiForecastFabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final state = Provider.of<StateApp>(context);

        final buttonUp = UiFab(
          onPressed: state.up,
          icon: Icons.add,
        );

        final buttonDown = UiFab(
          onPressed: state.down,
          icon: Icons.remove,
        );

        final currentCloudiness = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('${state.cloudiness}'),
        );

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonUp,
            currentCloudiness,
            buttonDown,
          ],
        );
      },
    );
  }
}
