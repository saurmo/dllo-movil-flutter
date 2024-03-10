import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.amber,
      width: maxWidth,
      height: maxHeight,
      child: Center(
          child: Container(
        color: Colors.blue,
        width: maxWidth * 0.5,
        height: maxHeight * 0.5,
      )),
    );
  }
}
