import 'package:flutter/material.dart';

import 'examples/button_example.dart';

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
          children: const [
            ButtonExample(),
          ],
        ),
      ),
    );
  }
}
