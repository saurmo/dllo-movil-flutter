import 'package:flutter/material.dart';
import 'package:todo/layout_1/card_action_button.dart';

class CardImage extends StatelessWidget {
  String pathImage;

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        Container(
          width: 250,
          height: 350,
          margin: const EdgeInsets.only(top: 80, left: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(pathImage),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              shape: BoxShape.rectangle,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15,
                  offset: Offset(0.0, 7),
                )
              ]),
        ),
        CardActionButton(),
      ],
    );
  }
}
