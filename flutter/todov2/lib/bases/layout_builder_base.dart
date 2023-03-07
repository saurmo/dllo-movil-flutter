import 'package:flutter/material.dart';

class LayoutBuilderBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      print(constrains);
      double maxWith=constrains.maxWidth;
      double maxHeight=constrains.maxHeight;
      return Row(
        children: [
          Container(
            color: Colors.amber,
            width: maxWith*0.75,
            height: maxHeight*0.5,
          )
        ],
      );
    });
  }
}
