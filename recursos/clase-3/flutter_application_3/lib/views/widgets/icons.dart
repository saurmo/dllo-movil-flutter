import 'package:flutter/material.dart';

Widget createIcons() {
  return const Column(
    children: [
      Icon(Icons.home),
      Icon(Icons.settings, color: Colors.blue),
      Icon(Icons.favorite, size: 40),
    ],
  );
}
