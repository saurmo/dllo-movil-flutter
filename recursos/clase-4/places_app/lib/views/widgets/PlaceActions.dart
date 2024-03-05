import 'package:flutter/material.dart';

Widget placeActions() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        getIconText(Icons.phone, "call"),
        getIconText(Icons.near_me, "route"),
        getIconText(Icons.share, "share"),
      ],
    ),
  );
}

Widget getIconText(IconData icon, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: Colors.blue,
      ),
      Text(
        text.toUpperCase(),
        style: const TextStyle(color: Colors.blue),
      )
    ],
  );
}
