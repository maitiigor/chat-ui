import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;
  String _title;
  String _description;
  TextSection(this._color, this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: _color,
          ),
          child: Text(
            this._title,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          child: Text(this._description),
        )
      ],
    );
  }
}
