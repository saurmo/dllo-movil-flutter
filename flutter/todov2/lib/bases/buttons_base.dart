import 'package:flutter/material.dart';

class ButtonBase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonBase();
  }
}

class _ButtonBase extends State<ButtonBase> {
  bool onPressed = false;

  void onPressedIcon() {
    print("Test $onPressed");
    setState(() {
       onPressed = !onPressed;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(onPressed ? Icons.favorite : Icons.favorite_border),
        onPressed: onPressedIcon,
      ),
    );
  }
}
