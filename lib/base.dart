import 'package:flutter/material.dart';

import 'examples/button_example.dart';
import 'examples/space_example.dart';

List<ExampleModel> widgetExample = [
  ExampleModel(name: 'Button', builder: (BuildContext context) => const BaseView(child: ButtonExample())),
  ExampleModel(name: 'Space', builder: (BuildContext context) => const BaseView(child: SpaceExample())),
];

class BaseView extends StatelessWidget {
  const BaseView({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}

class ExampleModel {
  ExampleModel({
    required this.name,
    required this.builder,
  });

  final String name;
  final WidgetBuilder builder;
}
