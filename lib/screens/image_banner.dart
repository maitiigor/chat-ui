import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  String _image;

  ImageBanner(this._image);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 10),
      constraints: BoxConstraints(maxHeight: 300),
      child: Image.asset(
        _image,
        fit: BoxFit.cover,
      ),
    );
  }
}
