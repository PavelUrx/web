import 'package:flutter/material.dart';

class InfoBox extends StatefulWidget {
  const InfoBox({Key? key, required this.iBWidget}) : super(key: key);
  final Widget iBWidget;
  @override
  State<InfoBox> createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(25), child: widget.iBWidget);
  }
}
