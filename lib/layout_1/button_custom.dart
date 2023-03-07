import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  CustomButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Ink(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
