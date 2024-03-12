import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;
        return Center(
          child: Container(
            color: Colors.amberAccent,
            width: width,
            height: height,
            child: Center(
              child: Container(
                width: width * 0.5,
                height: height * 0.5,
                // child: Text("Width: $width Height: $height"),
                child: Image.network(
                  src,
                ),
                color: Colors.blueAccent,
              ),
            ),
          ),
        );
      },
    );
  }
}
