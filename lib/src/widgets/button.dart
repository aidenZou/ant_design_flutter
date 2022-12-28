import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

/// 主按钮、次按钮、虚线按钮、文本按钮和链接按钮
enum ButtonType {
  /// 主按钮：用于主行动点，一个操作区域只能有一个主按钮
  primary,

  /// 次按钮（默认按钮）：用于没有主次之分的一组行动点。
  normal, // default outline secondary none

  /// 虚线按钮：常用于添加操作。
  dashed,

  /// 文本按钮：用于最次级的行动点。
  text,

  /// 链接按钮：一般用于链接，即导航至某位置。
  link,
}

// enum ButtonSize {
//   large,
//   middle,
//   small,
// }

/// 五种按钮
///
/// 主按钮：用于主行动点，一个操作区域只能有一个主按钮。
/// 默认按钮：用于没有主次之分的一组行动点。
/// 虚线按钮：常用于添加操作。
/// 文本按钮：用于最次级的行动点。
/// 链接按钮：一般用于链接，即导航至某位置。
///
/// 四种状态属性
///
/// 危险：删除/移动/修改权限等危险操作，一般需要二次确认。
/// 幽灵：用于背景色比较复杂的地方，常用在首页/产品页等展示场景。
/// 禁用：行动点不可用的时候，一般需要文案解释。
/// 加载中：用于异步操作等待反馈的时候，也可以避免多次提交。
class Button extends StatefulWidget {
  const Button(
    this.text, {
    Key? key,
    this.type = ButtonType.normal,
    this.danger = false,
    this.ghost = false,
    this.disabled = false,
    this.loading = false,
    this.block = false,
    required this.onPressed,
  }) : super(key: key);

  final String text;

  /// 按钮类型
  final ButtonType type;

  /// 设置危险按钮
  ///
  /// 危险：删除/移动/修改权限等危险操作，一般需要二次确认。
  final bool danger;

  /// 幽灵属性，使按钮背景透明
  ///
  /// 幽灵：用于背景色比较复杂的地方，常用在首页/产品页等展示场景。
  final bool ghost;

  /// 设置按钮失效状态
  ///
  /// 禁用：行动点不可用的时候，一般需要文案解释。
  final bool disabled;

  /// 设置按钮载入状态
  ///
  /// 加载中：用于异步操作等待反馈的时候，也可以避免多次提交。
  final bool loading;

  /// 将按钮宽度调整为其父宽度的选项
  final bool block;

  final VoidCallback? onPressed;

  @override
  // ignore: library_private_types_in_public_api
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool hover = false;

  bool get isDashed => widget.type == ButtonType.dashed;

  Color get backgroundColor {
    if (widget.type != ButtonType.text && widget.type != ButtonType.link && widget.disabled) {
      return const Color.fromRGBO(0, 0, 0, 0.04);
    }

    if (widget.type == ButtonType.primary) {
      if (widget.danger) {
        return const Color(0xffFF4D4F);
      }

      return const Color(0xff1677FF);
    }

    if (widget.type == ButtonType.text && hover) {
      if (widget.danger) {
        return const Color(0xfffff2f0);
      }

      return const Color.fromRGBO(0, 0, 0, 0.06);
    }

    if (widget.type == ButtonType.normal) {
      return Colors.white;
    }

    return Colors.transparent;
  }

  Color get textColor {
    if (widget.disabled) {
      return const Color.fromRGBO(0, 0, 0, 0.25);
    }

    if (widget.type == ButtonType.primary) {
      return Colors.white;
    }

    if (widget.danger) {
      return const Color(0xffFF4D4F);
    }

    if (widget.type == ButtonType.link) {
      return const Color(0xff1677FF);
    }

    if (([ButtonType.normal, ButtonType.dashed].contains(widget.type)) && hover) {
      return const Color(0xff4096ff);
    }

    return const Color.fromRGBO(0, 0, 0, 0.88);
  }

  Color get borderColor {
    if (widget.disabled) {
      return const Color.fromRGBO(0, 0, 0, 0.15);
    }

    if ([ButtonType.normal, ButtonType.dashed].contains(widget.type)) {
      if (widget.danger) {
        return const Color(0xffFF4D4F);
      }

      if (hover) {
        return const Color(0xff4096ff);
      }

      return const Color.fromRGBO(0, 0, 0, 0.15);
    }

    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // onHover: (event) => print('onHover'),
      onEnter: (event) {
        if (widget.disabled) {
          return;
        }

        setState(() {
          hover = true;
        });
      },
      onExit: (event) {
        if (widget.disabled) {
          return;
        }

        setState(() {
          hover = false;
        });
      },
      cursor: widget.disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.disabled ? null : widget.onPressed,
        child: widget.block
            ? buildButton()
            : UnconstrainedBox(
                child: buildButton(),
              ),
      ),
    );
  }

  Widget buildButton() {
    return Container(
      // width: 74,
      height: isDashed ? 30 : 32,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      decoration: widget.type == ButtonType.dashed
          ? DottedDecoration(
              shape: Shape.box,
              strokeWidth: 1,
              dash: const <int>[3, 2],
              color: borderColor,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            )
          : BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              border: [ButtonType.normal, ButtonType.primary].contains(widget.type)
                  ? Border.all(
                      color: borderColor,
                      width: 1,
                      style: BorderStyle.solid,
                      strokeAlign: StrokeAlign.inside,
                    )
                  : null,
            ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 14,
            height: 1,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
