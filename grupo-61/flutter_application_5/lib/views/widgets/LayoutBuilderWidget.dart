
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;
        return Container(
          width: width,
          height: height,
          color: Colors.amber,
          child: Center(
            child: Container(
              width: width * 0.5,
              height: height * 0.5,
              color: Colors.blueGrey,
              child: Text("width: $width height: $height"),
            ),
          ),
        );
      },
    );
  }
}
