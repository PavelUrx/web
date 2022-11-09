import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Index extends StatefulWidget {
  const Index({Key? key, required this.content}) : super(key: key);
  final List<Widget> content;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 800) {
          return SingleChildScrollView(
              child: StaggeredGrid.count(
                  crossAxisCount: 2, children: widget.content));
        } else {
          return ListView(
            children: widget.content,
          );
        }
      },
    );
  }
}
