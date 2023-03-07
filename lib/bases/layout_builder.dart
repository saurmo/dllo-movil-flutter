import 'package:flutter/material.dart';

class LayoutBuilderBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builderContext, constrains) {
        print(constrains);
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              width: 400.0,
              height: 10000.0,
            ),
          ],
        );
        //    Columna overflow
        // return Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //         border: Border.all(width: 1.0),
        //       ),
        //       width: 200.0,
        //       height: 880.0,
        //     )
        //   ],
        // );
      },
    );
  }
}
