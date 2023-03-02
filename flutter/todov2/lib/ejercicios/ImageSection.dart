import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  late String _url;

  ImageSection(String url) {
    _url = url;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10, bottom: 10),
      child: Image.network(_url),
    );
  }
}
