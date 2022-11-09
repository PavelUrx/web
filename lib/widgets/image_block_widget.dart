import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';

class ImageBlock extends StatelessWidget {
  const ImageBlock({Key? key, required this.title, required this.imgUrl})
      : super(key: key);
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DefaultTheme().getInfoBoxStyle(),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: title.isEmpty
              ? Column(children: [Image.network(imgUrl)])
              : Column(
                  children: [
                    Text(
                      title,
                      style: DefaultTheme().getTitleStyle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.network(imgUrl)
                  ],
                )),
    );
  }
}
