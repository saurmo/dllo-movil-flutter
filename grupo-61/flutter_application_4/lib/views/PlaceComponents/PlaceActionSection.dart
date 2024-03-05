import 'package:flutter/material.dart';

Widget placeActionSection() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        action(Icons.call, "CALL"),
        action(Icons.near_me, "ROUTE"),
        action(Icons.share, "SHARE"),
      ],
    ),
  );
}

Widget action(IconData icon, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: Colors.blue,
      ),
      Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    ],
  );
}
