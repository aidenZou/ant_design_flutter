import 'package:flutter/material.dart' hide Divider;
import 'package:flutter/material.dart' as material;
import 'package:dotted_decoration/dotted_decoration.dart';

/// 分割线标题的位置
enum DividerOrientation {
  left,

  right,

  center,
}

class Divider extends StatelessWidget {
  const Divider({
    Key? key,
    this.text,
    this.orientation = DividerOrientation.center,
    this.orientationMargin,
    this.dashed = false,
  }) : super(key: key);

  final String? text;

  /// 是否虚线
  final bool dashed;

  /// 分割线标题的位置
  final DividerOrientation orientation;

  /// 标题和最近 left/right 边框之间的距离，去除了分割线，同时 orientation 必须为 left 或 right
  final double? orientationMargin;

  bool get isText => text != null && (text?.isNotEmpty ?? false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: orientation == DividerOrientation.center ? Alignment.center : AlignmentDirectional.centerStart,
      children: [
        if (!dashed)
          material.Divider(
            color: const Color.fromRGBO(5, 5, 5, 0.06),
            thickness: 1,
            indent: orientation == DividerOrientation.left ? orientationMargin : 0.0,
            endIndent: orientation == DividerOrientation.right ? orientationMargin : 0.0,
          ),
        if (dashed)
          Container(
            decoration: DottedDecoration(
              shape: Shape.line,
              strokeWidth: 1,
              dash: const <int>[3, 2],
              color: const Color.fromRGBO(5, 5, 5, 0.06),
              linePosition: LinePosition.top,
            ),
          ),
        Positioned(
          left: orientation == DividerOrientation.left ? orientationMargin ?? 16 : null,
          right: orientation == DividerOrientation.right ? orientationMargin ?? 16 : null,
          child: Container(
            color: isText ? Colors.white : Colors.transparent,
            padding: EdgeInsets.only(
              left: orientationMargin != null && orientation == DividerOrientation.left ? 0 : 8,
              right: orientationMargin != null && orientation == DividerOrientation.right ? 0 : 8,
              top: 16,
              bottom: 16,
            ),
            child: isText
                ? Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 0.88),
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
