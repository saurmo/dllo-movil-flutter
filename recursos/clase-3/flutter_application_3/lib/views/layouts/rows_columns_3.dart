import 'package:flutter/material.dart';

Widget createRowColumn() {
  return Container(
    width: 500,
    height: 500,
    alignment: Alignment.center,
    margin: EdgeInsets.all(10),
    decoration:
        BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      // textDirection: TextDirection.rtl,
      children: [
        Container(child: Text("1"), color: Colors.greenAccent, width: 50, height: 50,),
        Container(child: Text("2"), color: Colors.grey, width: 50, height: 50,),
        Container(child: Text("3"), color: Colors.greenAccent, width: 50, height: 50,),
      ],
    ),
  );
}
