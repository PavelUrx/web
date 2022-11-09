import 'package:flutter/material.dart';
import 'package:pff/themes/default_theme.dart';
import 'package:pff/widgets/contact_row_widget.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock(
      {Key? key,
      required this.title,
      required this.email,
      required this.gitHub,
      required this.location,
      required this.phone})
      : super(key: key);
  final String title;
  final String email;
  final String phone;
  final String location;
  final String gitHub;

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
            ContactRow(data: phone, iconData: Icons.phone),
            ContactRow(data: email, iconData: Icons.email),
            ContactRow(data: gitHub, iconData: Icons.code),
            ContactRow(data: location, iconData: Icons.location_pin),
          ],
        ),
      ),
    );
  }
}
