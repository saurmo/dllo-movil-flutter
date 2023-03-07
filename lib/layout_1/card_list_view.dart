import 'package:flutter/widgets.dart';
import 'package:todo/layout_1/card_image.dart';

class CardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("https://picsum.photos/300"),
          CardImage("https://picsum.photos/300"),
          CardImage("https://picsum.photos/300"),
        ],
      ),
    );
  }
}
