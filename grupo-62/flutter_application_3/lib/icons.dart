import 'package:flutter/material.dart';

Widget createIcons() {
  return Container(
    width: 200,
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(Icons.account_circle),
        ),
        Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.home,
            size: 50,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.people,
            size: 20,
            color: Colors.deepOrange,
          ),
        )
      ],
    ),
  );
}
