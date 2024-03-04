import 'package:flutter/material.dart';

Widget crearImagenes() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Image.asset(
      //   "assets/images/casa.jpg",
      //   width: 300,
      //   height: 300,
      //   color: Colors.lightBlue.withOpacity(0.5),
      //   colorBlendMode: BlendMode.multiply,
      // )
      Image.network(
        "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
        width: 300,
        height: 300,
        color: Colors.lightBlue.withOpacity(0.5),
        colorBlendMode: BlendMode.multiply,
      )
    ],
  );
}
