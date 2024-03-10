import 'package:flutter/material.dart';

class ImageProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String image =
        "https://media.istockphoto.com/id/1479107559/es/foto/dos-lindos-pollitos-de-ganso-egipcio-miran-a-la-c%C3%A1mara.jpg?s=1024x1024&w=is&k=20&c=gTR_Jm7i4qmjwlbrvzjvHs9FCtSqdfn19STl7sVY2Gg=";
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
