import 'package:flutter/material.dart';

import 'button.dart';
import 'space.dart';

typedef FooterWidgetBuilder = List<Widget> Function(BuildContext context, VoidCallback closeModal);

class Modal extends StatelessWidget {
  const Modal({
    Key? key,
    required this.title,
    required this.child,
    this.footerBuilder,
    this.width = 520,
    this.onOk,
    this.onCancel,
    this.afterClose,
  }) : super(key: key);

  /// 标题
  final String title;

  /// body
  final Widget child;

  /// 底部内容，当不需要默认底部按钮时，可以 footerBuilder 返回 []
  final FooterWidgetBuilder? footerBuilder;

  /// 宽度
  final double width;

  /// 点击确定回调
  final VoidCallback? onOk;

  /// 点击遮罩层或右上角叉或取消按钮的回调
  final VoidCallback? onCancel;

  /// Modal 完全关闭后的回调
  final VoidCallback? afterClose;

  // showModal

  // closeModal

  @override
  Widget build(BuildContext context) {
    // bool isFooter = footer?.isNotEmpty ?? true;
    closeModal() => Navigator.of(context).pop();
    List<Widget> footer = footerBuilder?.call(context, closeModal) ?? _buildDefaultFooter(context);

    return Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      elevation: 4,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title 标题
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 0.88),
              ),
            ),
            const SizedBox(height: 8),

            // body
            child,

            // footer 底部内容
            if (footer.isNotEmpty) const SizedBox(height: 12),
            if (footer.isNotEmpty)
              SizedBox(
                width: double.infinity,
                child: Space(
                  mainAlignment: WrapAlignment.end,
                  children: footer,
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDefaultFooter(BuildContext context) {
    return [
      Button(
        '取消',
        onPressed: () => _handleCancel(context),
      ),
      Button(
        '确定',
        type: ButtonType.primary,
        onPressed: () => _handleOk(context),
      ),
    ];
  }

  void _handleOk(BuildContext context) {
    onOk?.call();
    Navigator.of(context).pop();
    afterClose?.call();
  }

  void _handleCancel(BuildContext context) {
    onCancel?.call();
    Navigator.of(context).pop();
    afterClose?.call();
  }
}
