import 'package:flutter/material.dart';

class ImageProfileWidget extends StatelessWidget {
  ImageProfileWidget({
    super.key,
  });

  var src =
      "https://cdn.pixabay.com/photo/2023/04/19/19/45/gosling-7938445_1280.jpg";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(src),
            )),
      ),
    );
  }
}
