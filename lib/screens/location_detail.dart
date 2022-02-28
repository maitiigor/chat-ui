import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'package:tuts/screens/textsection.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ImageBanner("assets/images/money-key.jpg"),
        TextSection(
            Colors.red, "Title 1", "The is a very beautifl place to visit"),
        TextSection(
            Colors.blue, "Title 2", "The is a very beautifl place to visit"),
        TextSection(
            Colors.pink, "Title 3", "The is a very beautifl place to visit")
      ],
    ));
  }
}
