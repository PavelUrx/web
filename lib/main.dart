import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';
import 'layouts/index_layout.dart';

void main() {
  runApp(const PfApp());
}

class PfApp extends StatelessWidget {
  const PfApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme().getAppTheme(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Pavel Urx'),
          ),
          body: const Index()),
    );
  }
}
