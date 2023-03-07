import 'package:flutter/material.dart';

class CardActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CardActionButton();
  }
}

class _CardActionButton extends State<CardActionButton> {
  bool pressed = false;
  void onPressedFav() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: Colors.blueAccent,
      mini: true,
      tooltip: "Fav",
      child: Icon(pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
