// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/styles/themes/themes.dart';

class UiTheme extends StatefulWidget {
  final Widget child;

  const UiTheme({
    super.key,
    required this.child,
  });

  @override
  State<UiTheme> createState() => UiThemeState();

  static UiThemeState of(BuildContext context) {
    var widget =
        context.dependOnInheritedWidgetOfExactType<_InheritedUiTheme>();

    assert(widget != null, 'No UiTheme found in context');

    return widget!.data;
  }
}

class UiThemeState extends State<UiTheme> {
  bool isDark = false;

  ThemeData _theme = Themes.getTheme(false);

  @override
  Widget build(BuildContext context) {
    return _InheritedUiTheme(
      data: this,
      child: widget.child,
    );
  }

  ThemeData get theme => _theme;

  void change(bool isDark) {
    setState(() {
      _theme = Themes.getTheme(isDark);

      this.isDark = isDark;
    });
  }
}

class _InheritedUiTheme extends InheritedWidget {
  final UiThemeState data;

  const _InheritedUiTheme({
    required super.child,
    required this.data,
  });

  @override
  bool updateShouldNotify(_InheritedUiTheme oldWidget) => true;
}
