

import 'package:flutter/material.dart';

Widget createIcons(){
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.home),
      Icon(Icons.home, color: Colors.blue, size: 60,),
    ],
  );
}