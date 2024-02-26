import 'package:flutter/material.dart';

Widget crearIconos() {
  return const Column(
    children: [
      Icon(Icons.home),
      Icon(Icons.settings, color: Colors.blue),
      Icon(Icons.favorite, size: 40),
      Icon(Icons.home, textDirection: TextDirection.rtl),
    ],
  );
}
