import 'package:flutter/material.dart';

Widget createRowsColumns() {
  return Container(
    width: 400,
    height: 400,
    // alignment: Alignment.center,
    margin: EdgeInsets.all(50),
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
    child: createRow(),
  );
}

Widget createRow() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 50,
        height: 50,
        color: Colors.amber,
      ),
      Container(
        width: 50,
        height: 50,
        color: Colors.blueAccent,
      ),
      Container(
        width: 50,
        height: 50,
        color: Colors.deepPurple,
      )
    ],
  );
}
