// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/components/ui_theme.dart';
import 'package:weather/ui/const/common.dart';

class UiForecastText extends StatelessWidget {
  const UiForecastText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: UiTheme.of(context).theme.primaryColorDark,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Observer(
        builder: (_) {
          final state = Provider.of<StateApp>(context);

          return Text(weatherDescription[state.cloudiness]!);
        },
      ),
    );
  }
}
