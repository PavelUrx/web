import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';
import 'package:pff/widgets/about_me_widget.dart';
import 'package:pff/widgets/info_box_widget.dart';
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
          body: const Index(
            content: [
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
              InfoBox(iBWidget: AboutMe()),
            ],
          )),
    );
  }
}
