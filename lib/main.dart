// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'src/widgets/space.dart';
import 'src/widgets/button.dart';

import 'code_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ant Design Flutter',
      theme: ThemeData(
        useMaterial3: true,
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Ant Design Flutter'), // Ant Design UI Kit
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // color: const Color.fromRGBO(218, 218, 219, 1),
        color: Colors.white,
        width: double.infinity,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Space(
              direction: Axis.vertical,
              spacing: 16,
              children: <Widget>[
                CodeBox(
                  title: '按钮类型',
                  child: Space(
                    children: [
                      Button(
                        'Primary Button',
                        type: ButtonType.primary,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Default Button',
                        onPressed: () => print('onPressed'),
                      ),
                      // Button(
                      //   'Dashed Button',
                      //   type: ButtonType.dashed,
                      //   onPressed: () => print('onPressed'),
                      // ),
                      Button(
                        'Text Button',
                        type: ButtonType.text,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Link Button',
                        type: ButtonType.link,
                        onPressed: () => print('onPressed'),
                      ),
                    ],
                  ),
                ),
                CodeBox(
                  title: '危险按钮',
                  child: Space(
                    children: [
                      Button(
                        'Primary',
                        type: ButtonType.primary,
                        danger: true,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Default',
                        danger: true,
                        onPressed: () => print('onPressed'),
                      ),
                      // Button(
                      //   'Dashed',
                      //   type: ButtonType.dashed,
                      //   danger: true,
                      //   onPressed: () => print('onPressed'),
                      // ),
                      Button(
                        'Text',
                        type: ButtonType.text,
                        danger: true,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Link',
                        type: ButtonType.link,
                        danger: true,
                        onPressed: () => print('onPressed'),
                      ),
                    ],
                  ),
                ),
                CodeBox(
                  title: '不可用状态',
                  child: Space(
                    direction: Axis.vertical,
                    children: [
                      Space(
                        children: [
                          Button(
                            'Primary',
                            type: ButtonType.primary,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Primary(disabled)',
                            type: ButtonType.primary,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Default',
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Default(disabled)',
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Text',
                            type: ButtonType.text,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Text(disabled)',
                            type: ButtonType.text,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Link',
                            type: ButtonType.link,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Link(disabled)',
                            type: ButtonType.link,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Danger Primary',
                            type: ButtonType.primary,
                            danger: true,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Danger Primary(disabled)',
                            type: ButtonType.primary,
                            danger: true,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Danger Default',
                            danger: true,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Danger Default(disabled)',
                            danger: true,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Danger Text',
                            type: ButtonType.text,
                            danger: true,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Danger Text(disabled)',
                            type: ButtonType.text,
                            danger: true,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                      Space(
                        children: [
                          Button(
                            'Danger Link',
                            type: ButtonType.link,
                            danger: true,
                            onPressed: () => print('onPressed'),
                          ),
                          Button(
                            'Danger Link(disabled)',
                            type: ButtonType.link,
                            danger: true,
                            disabled: true,
                            onPressed: () => print('onPressed'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CodeBox(
                  title: 'Block 按钮',
                  child: Space(
                    direction: Axis.vertical,
                    children: [
                      Button(
                        'Primary',
                        type: ButtonType.primary,
                        block: true,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Default',
                        block: true,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Text',
                        type: ButtonType.text,
                        block: true,
                        onPressed: () => print('onPressed'),
                      ),
                      Button(
                        'Link',
                        type: ButtonType.link,
                        block: true,
                        onPressed: () => print('onPressed'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
