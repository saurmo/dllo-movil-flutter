import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  String text;

  TextBase(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontFamily: "warp"),
        ),
      ],
    ));
  }
}
