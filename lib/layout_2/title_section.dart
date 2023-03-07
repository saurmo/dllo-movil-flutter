import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  BoxConstraints constraints;
  String name;
  String place;
  int starts;

  TitleSection({
    required this.constraints,
    required this.name,
    required this.place,
    required this.starts,
    super.key,
  });

  _getTitles() {
    List<Widget> titles = [
      Text(
        name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        place,
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w100,
          fontStyle: FontStyle.italic,
        ),
      ),
    ];
    return Column(
      children: titles,
    );
  }

  _getStarts() {
    return Row(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = constraints.maxHeight;
    double maxWidth = constraints.maxWidth;
    double descriptionHeight = maxHeight * 0.3;
    double stairWidth = maxWidth * 0.15;

    Widget starts = _getStarts();
    Widget title = _getTitles();

    final titleStart = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title, starts],
    );
    return titleStart;
  }
}
