import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';
import 'package:pff/widgets/about_me_widget.dart';
import 'package:pff/widgets/contact_block_widget.dart';
import 'package:pff/widgets/image_block_widget.dart';
import 'package:pff/widgets/info_box_widget.dart';
import 'package:pff/widgets/portfolio_block_widget.dart';
import 'package:pff/widgets/text_block_widget.dart';
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
            actions: const [Center(child: Icon(Icons.language))],
          ),
          body: const Index(
            content: [
              InfoBox(
                  iBWidget: TextBlock(
                      title: 'About me',
                      contentText: 'Jsem prostě dobrej haha...')),
              InfoBox(
                  iBWidget: ImageBlock(
                      title: '',
                      imgUrl:
                          'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_960_720.jpg')),
              InfoBox(
                  iBWidget: ContactBlock(
                      title: 'Contact',
                      email: 'pavel.urx@protonmail.com',
                      gitHub: 'git',
                      location: 'Doma',
                      phone: '775415180')),
              InfoBox(
                  iBWidget: PortfolioBlock(
                      title: 'Cheers',
                      imgUrl:
                          'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_960_720.jpg',
                      about: 'Míchání drinků')),
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
