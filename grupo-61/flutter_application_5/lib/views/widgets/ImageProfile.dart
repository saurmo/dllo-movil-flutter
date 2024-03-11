import 'package:flutter/material.dart';

class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String url =
        "https://cdn.pixabay.com/photo/2023/04/19/19/45/gosling-7938445_1280.jpg";
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
