import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:pff/layouts/index_layout.dart';
import 'package:pff/widgets/info_box_widget.dart';
import 'package:pff/widgets/text_block_widget.dart';

import '../widgets/contact_block_widget.dart';
import '../widgets/image_block_widget.dart';

class RemotedLayout extends AnimatedWidget {
  final FirebaseRemoteConfig remoteConfig;
  const RemotedLayout({super.key, required this.remoteConfig})
      : super(listenable: remoteConfig);

  @override
  Widget build(BuildContext context) {
    return Index(content: [
      InfoBox(iBWidget: Text(remoteConfig.lastFetchStatus.toString())),
      InfoBox(
          iBWidget: TextBlock(
        title: remoteConfig.getString("AboutMe"),
        contentText: remoteConfig.getString("AboutMeText"),
      )),
      InfoBox(
          iBWidget: ImageBlock(
              title: remoteConfig.getString("PicOfMeTitle"),
              imgUrl: remoteConfig.getString('PicOfMe'))),
      InfoBox(
          iBWidget: ContactBlock(
              title: 'Contact',
              email: remoteConfig.getString('Email'),
              gitHub: remoteConfig.getString('Git'),
              location: remoteConfig.getString('Location'),
              phone: remoteConfig.getString('Phone'))),
    ]);
  }
}
