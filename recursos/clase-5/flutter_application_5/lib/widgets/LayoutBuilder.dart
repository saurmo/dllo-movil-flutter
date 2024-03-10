import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.amber,
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Center(
              child: Container(
            color: Colors.blue,
            width: constraints.maxWidth * 0.5,
            height: constraints.maxHeight * 0.5,
          )),
        );
      },
    );
  }
}
