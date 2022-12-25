import 'package:flutter/material.dart';

class CodeBox extends StatelessWidget {
  const CodeBox({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(
          color: const Color.fromRGBO(5, 5, 5, 0.06),
          width: 1,
          style: BorderStyle.solid,
          strokeAlign: StrokeAlign.inside,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Container(child: child)
        ],
      ),
    );
  }
}
