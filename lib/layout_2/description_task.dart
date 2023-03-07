import 'package:flutter/material.dart';

class DescriptionTask extends StatelessWidget {
  BoxConstraints constraints;
  DescriptionTask({
    required this.constraints,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double maxHeight = constraints.maxHeight;
    double maxWidth = constraints.maxWidth;
    double descriptionHeight = maxHeight * 0.3;
    double stairWidth = maxWidth * 0.15;
    const List<Widget> titles = [
      Text(
        "Balneario la cazuela",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        "Balneario la cazuela",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          fontFamily: "GolosText",
        ),
      ),
      Text(
        "San Rafael, Antioquia",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
            fontFamily: ""),
      ),
    ];

    Widget starts = Container(
        margin:
            EdgeInsets.only(top: descriptionHeight + 10.0, right: stairWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(
              Icons.star_outline,
              color: Colors.amber,
            ),
            Icon(
              Icons.star_outline,
              color: Colors.amber,
            ),
            Icon(
              Icons.star_outline,
              color: Colors.amber,
            ),
            Icon(
              Icons.star_outline,
              color: Colors.amber,
            ),
            Icon(
              Icons.star_outline,
              color: Colors.amber,
            ),
          ],
        ));

    final titleStart = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: descriptionHeight, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: titles,
          ),
        ),
        starts
      ],
    );
    return titleStart;
  }
}
