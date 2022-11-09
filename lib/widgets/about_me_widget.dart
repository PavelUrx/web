import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DefaultTheme().getInfoBoxStyle(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(
          children: [
            Text(
              'O mně',
              style: DefaultTheme().getTitleStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris metus. Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis enim ipsum id lacus. Curabitur vitae diam non enim vestibulum interdum. Aliquam ornare wisi eu metus. Mauris elementum mauris vitae tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Vestibulum fermentum tortor id mi. Pellentesque sapien. Duis pulvinar.',
              style: DefaultTheme().getParagraphStyle(),
            )
          ],
        ),
      ),
    );
  }
}
