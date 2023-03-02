// Flutter imports:
import 'package:flutter/material.dart';

class UiFab extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const UiFab({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: onPressed,
        child: Icon(icon),
      );
}
