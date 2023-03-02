// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/observables/state_app_observable.dart';
import 'package:weather/ui/utils/common.dart';

class UiAnimatedOpacity extends StatefulWidget {
  final Widget child;

  final double limit;

  const UiAnimatedOpacity({
    super.key,
    required this.child,
    required this.limit,
  });

  @override
  State<UiAnimatedOpacity> createState() => _UiAnimatedOpacityState();
}

class _UiAnimatedOpacityState extends State<UiAnimatedOpacity>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<StateApp>(context);

    return Observer(
      builder: (_) {
        return AnimatedOpacity(
          opacity: getOpacity(widget.limit, state.cloudiness),
          duration: const Duration(seconds: 1),
          child: widget.child,
        );
      },
    );
  }
}
