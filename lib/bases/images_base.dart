import 'package:flutter/widgets.dart';

class ImagesBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 1800,
          height: 900,
          // child: Image.asset("assets/images/agua.jpg"),
        )
      ],
    );

    // Column(
    // children: [
    // Image.asset("/assets/images/agua.jpg"),
    // Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("assetName"),
    //     ),
    //   ),
    // ),
    //          BoxDecoration(image: DecorationImage(image: null, fit: BoxFit.cover)),
    // ],
    // );
  }
}
