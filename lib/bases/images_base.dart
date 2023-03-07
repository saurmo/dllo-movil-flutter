import 'package:flutter/widgets.dart';

class ImagesBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/agua.jpg"),
        Image.network("https://picsum.photos/200/300"),
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/agua.jpg"),
            ),
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
            ),
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/300"),
                fit: BoxFit.cover),
          ),
        ),

        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/300"),
                fit: BoxFit.fill),
          ),
        ),

        // BoxDecoration(image: DecorationImage(image: null, fit: BoxFit.cover)),
      ],
    );
  }
}
