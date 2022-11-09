import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';

class PortfolioBlock extends StatelessWidget {
  const PortfolioBlock(
      {Key? key,
      required this.title,
      required this.imgUrl,
      required this.about})
      : super(key: key);
  final String title;
  final String imgUrl;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DefaultTheme().getInfoBoxStyle(),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Stack(
            children: [
              ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 40, 47, 68).withOpacity(0.05),
                      BlendMode.dstATop),
                  child: Image.network(imgUrl)),
              Center(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: DefaultTheme().getTitleStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(about)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
