import 'package:flutter/material.dart';

class CodeBox extends StatelessWidget {
  const CodeBox({
    Key? key,
    required this.title,
    required this.description,
    required this.child,
  }) : super(key: key);

  final String title;

  final String description;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(
          color: const Color.fromRGBO(5, 5, 5, 0.06),
          width: 1,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            // padding: const EdgeInsets.fromLTRB(24, 42, 24, 50),
            padding: const EdgeInsets.all(24),
            child: child,
          ),
          Stack(
            children: [
              const Divider(
                color: Color.fromRGBO(5, 5, 5, 0.06),
                thickness: 1,
                height: 14 * 1,
              ),
              Positioned(
                left: 16,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, height: 1, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 0, 0.88)),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 18, 24, 12),
            child: Text(
              description,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color.fromRGBO(0, 0, 0, 0.88)),
            ),
          ),
        ],
      ),
    );
  }
}
