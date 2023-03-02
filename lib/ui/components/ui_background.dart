// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UiBackground extends SingleChildRenderObjectWidget {
  final Color color;

  const UiBackground({
    super.key,
    super.child,
    required this.color,
  });

  @override
  UiBackgroundRender createRenderObject(BuildContext context) {
    return UiBackgroundRender(
      color: color,
    );
  }
}

class UiBackgroundRender extends RenderProxyBox {
  final Color _color;

  UiBackgroundRender({
    Color color = Colors.transparent,
    RenderBox? child,
  })  : _color = color,
        super(child);

  @override
  void paint(PaintingContext context, Offset offset) {
    context.canvas.drawColor(
      _color,
      BlendMode.srcOver,
    );

    if (child != null) {
      context.paintChild(child!, offset);
    }
  }
}
