// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomingControls extends StatelessWidget {
  const HomingControls({Key? key}) : super(key: key);

  List<Widget> _emptySpan(int count) =>
      [for (int i = 0; i < count; i++) Container()];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 400,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: GridView.count(
          crossAxisCount: 5,
          children: [
            ..._emptySpan(2),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_up),
              label: Text('5 cm'),
            ),
            ..._emptySpan(4),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_up),
              label: Text('1mm'),
            ),
            ..._emptySpan(2),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_left),
              label: Text('5 cm'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_left),
              label: Text('1mm'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.home),
              label: Text(''),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_right),
              label: Text('1mm'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_right),
              label: Text('5cm'),
            ),
            ..._emptySpan(2),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down),
              label: Text('5cm'),
            ),
            ..._emptySpan(4),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down),
              label: Text('5cm'),
            ),
          ],
        ),
      ),
    );
  }
}
