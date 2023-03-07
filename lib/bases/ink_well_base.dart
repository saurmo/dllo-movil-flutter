import 'package:flutter/material.dart';

class InkWellBase extends StatelessWidget {
  String text;
  InkWellBase(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
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
