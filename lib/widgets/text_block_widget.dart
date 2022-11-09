import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';

class TextBlock extends StatelessWidget {
  const TextBlock({Key? key, required this.title, required this.contentText})
      : super(key: key);
  final String title;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DefaultTheme().getInfoBoxStyle(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(
          children: [
            Text(
              title,
              style: DefaultTheme().getTitleStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              contentText,
              style: DefaultTheme().getParagraphStyle(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
