import 'package:flutter/widgets.dart';

class ImagesBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("/assets/images/agua.jpg"),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assetName"),
            ),
          ),
        ),
        //          BoxDecoration(image: DecorationImage(image: null, fit: BoxFit.cover)),
      ],
    );
  }
}
