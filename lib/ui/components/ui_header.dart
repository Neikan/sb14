// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/ui/components/ui_theme.dart';

class UiHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const UiHeader({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: leading,
      actions: [
        Switch(
          value: UiTheme.of(context).isDark,
          onChanged: UiTheme.of(context).change,
        ),
      ],
    );
  }
}
