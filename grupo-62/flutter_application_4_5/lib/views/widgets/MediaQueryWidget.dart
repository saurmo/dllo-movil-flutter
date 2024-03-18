import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Colors.amber,
      child: Center(
        child: Container(
          width: width * 0.5,
          height: height * 0.5,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
