import 'package:flutter/material.dart';
import 'package:pff/widgets/about_me_widget.dart';
import 'package:pff/widgets/info_box_widget.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: const [
            Expanded(flex: 3, child: InfoBox(iBWidget: AboutMe())),
            Expanded(flex: 1, child: InfoBox(iBWidget: AboutMe())),
          ],
        ),
      ],
    );
  }
}
