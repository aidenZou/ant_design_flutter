import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({
    Key? key,
    this.direction = Axis.horizontal,
    this.spacing = 8,
    this.runSpacing,
    this.mainAlignment = WrapAlignment.start,
    this.crossAlignment = WrapCrossAlignment.center,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  // antd: size 间距大小 Size | Size[]

  /// 间距方向
  final Axis direction;

  /// 间距大小
  final double spacing;

  /// 间距大小
  final double? runSpacing;

  /// 对齐方式
  final WrapAlignment mainAlignment;

  /// 对齐方式
  final WrapCrossAlignment crossAlignment;

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.vertical) {
      List<Widget> newChildren = [];
      for (var item in children) {
        newChildren.add(item);
        if (newChildren.length < children.length * 2 - 1) {
          newChildren.add(SizedBox(height: spacing));
        }
      }
      // List<Widget> newChildren = children.join(SizedBox(height: spacing));

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: newChildren,
      );
    }

    return Wrap(
      direction: direction,
      spacing: spacing,
      runSpacing: runSpacing ?? spacing,
      alignment: mainAlignment,
      crossAxisAlignment: crossAlignment,
      children: children,
    );
  }
}
