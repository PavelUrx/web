import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({Key? key, required this.data, required this.iconData})
      : super(key: key);
  final IconData iconData;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(width: 20),
        Text(data),
      ],
    );
  }
}
